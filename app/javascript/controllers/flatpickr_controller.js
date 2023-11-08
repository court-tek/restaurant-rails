import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="flatpickr" 
export default class extends Controller {
  connect() {
    console.log("connected", this.element);

    flatpickr(".date_of_reservation", {
      minDate: "today",
      maxDate: new Date().fp_incr(60) // 14 days from now
  });

    flatpickr(".time_of_reservation", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "h:i",
  });
  }
}
