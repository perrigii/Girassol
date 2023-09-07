import { Controller } from "@hotwired/stimulus"
import OT from "@opentok/client";

// Connects to data-controller="opentok"
export default class extends Controller {
  static values = {apiKey: String, sessionId: String, token: String}
  connect() {
    this.initializeSession()
    console.log(this.apiKeyValue)
    console.log(this.sessionIdValue)
    console.log(this.tokenValue)
  }

  handleError = (errors) => {
    console.log(errors)
  }

  initializeSession = () => {
    const session = OT.initSession(this.apiKeyValue, this.sessionIdValue);

    // Create a publisher
    const publisher = OT.initPublisher('publisher', {
      insertMode: 'append',
      width: '100%',
      height: '100%',
    });

    // Connect to the session
    session.connect(this.tokenValue, function(error) {
      // If the connection is successful, publish to the session
      if (error) {
        this.handleError(error);
      } else {
        session.publish(publisher);
      }
    });

    // Create subscriber
    session.on('streamCreated', function(event) {
      session.subscribe(event.stream, 'subscriber', {
        insertMode: 'append',
        width: '100%',
        height: '100%'
      });
    });

  }
}
