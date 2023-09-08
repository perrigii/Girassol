import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      altInput: true,
      altFormat: "j F, Y",
      dateFormat: "d.m.Y",
      minDate: "today",
      // plugins: [new confirmDatePlugin({})]
      // dateFormat: "l",
      // more options available on the documentation!
    });

    flatpickr("#end_time", {
      altInput: true,

      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      minTime: "08:00",
      maxTime: "17:30",
      minDate: "today",
      time_24hr: true,

    });

  }
}
