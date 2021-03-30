//
// window.addEventListener("load", () => {
//     let editScheduleLinks = document.querySelectorAll("a[id^='edit-schedule-link-']");
//     let newScheduleLink = document.querySelector("a[id^='new-schedule-link']");
//
//     editScheduleLinks.forEach((editScheduleLink) => ajaxFunc(editScheduleLink));
//     ajaxFunc(newScheduleLink);
//
//     function ajaxFunc(link) {
//         link.addEventListener("ajax:success", (event) => {
//             const [_data, _status, xhr] = event.detail;
//             document.querySelector("[data-block-id='schedule-area']").innerHTML = xhr.responseText;
//
//         });
//         link.addEventListener("ajax:error", (event) => {
//             const [_data, _status, xhr] = event.detail;
//             document.querySelector("[data-block-id='schedule-area']").innerHTML = xhr.responseText;
//         });
//     }
// });