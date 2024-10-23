const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const Mux = require("@mux/mux-node");

const kTokenId = "b5cf6280-72c2-4777-bb07-face2a262b6f";
const kTokenSecret =
  "+wuR6qEsRuFVC/+uB+Q/rFDQzjgPse9auBke86uFqLeQqKG9dNTBpcnDlizUF32embKHqlq5qns";

const { Video } = new Mux(kTokenId, kTokenSecret);

exports.createLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const response = await Video.LiveStreams.create({
      latency_mode: data.latency_mode || "standard",
      playback_policy: "public",
      new_asset_settings: { playback_policy: "public" },
    });
    return response;
  } catch (err) {
    console.error(
      `Unable to start the live stream ${context.auth.uid}. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create live stream",
    );
  }
});

exports.retrieveLiveStreams = functions.https.onCall(async (data, context) => {
  try {
    const liveStreams = await Video.LiveStreams.list();
    const responseList = liveStreams.map((liveStream) => ({
      id: liveStream.id,
      status: liveStream.status,
      playback_ids: liveStream.playback_ids,
      created_at: liveStream.created_at,
    }));
    return responseList;
  } catch (err) {
    console.error(
      `Unable to retrieve live streams. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not retrieve live streams",
    );
  }
});

exports.retrieveLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const liveStreamId = data.liveStreamId;
    const liveStream = await Video.LiveStreams.get(liveStreamId);
    return liveStream;
  } catch (err) {
    console.error(
      `Unable to retrieve live stream, id: ${data.liveStreamId}. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not retrieve live stream",
    );
  }
});

exports.deleteLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const liveStreamId = data.liveStreamId;
    const response = await Video.LiveStreams.del(liveStreamId);
    return response;
  } catch (err) {
    console.error(
      `Unable to delete live stream, id: ${data.liveStreamId}. 
        Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not delete live stream",
    );
  }
});
exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore.collection("users").doc(user.uid).delete();
});
