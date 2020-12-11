window.addEventListener("load", () => {

    let showScheduleLinks = document.querySelectorAll("a[id^=\"show-schedule-link-\"]");
    showScheduleLinks.forEach((showScheduleLink) => ajaxFunc(showScheduleLink));

    function ajaxFunc(link) {
        link.addEventListener("ajax:success", (event) => {
            const [_data, _status, xhr] = event.detail;
            document.querySelector("[data-block-id='schedule-area']").innerHTML = xhr.responseText;

        });
        link.addEventListener("ajax:error", () => {
            alert('Ошибка соединения!')
        });
    }
});

