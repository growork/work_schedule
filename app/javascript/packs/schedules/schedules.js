window.addEventListener("load", () => {
    let showScheduleLinks = document.querySelectorAll("a[id^=\"show-schedule-link-\"]");
    let newScheduleLink = document.querySelector("a[id^=\"new-schedule-link\"]");

    showScheduleLinks.forEach((showScheduleLink) => ajaxFunc(showScheduleLink));
    ajaxFunc(newScheduleLink);


    function ajaxFunc(link) {
        link.addEventListener("ajax:success", (event) => {
            const [_data, _status, xhr] = event.detail;
            document.querySelector("[data-block-id='schedule-area']").innerHTML = xhr.responseText;

        });
        link.addEventListener("ajax:error", (event) => {
            const [_data, _status, xhr] = event.detail;
            document.querySelector("[data-block-id='schedule-area']").innerHTML = xhr.responseText;
        });
    }
});

