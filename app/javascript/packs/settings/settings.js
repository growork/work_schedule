window.addEventListener("load", () => {
    const links = document.querySelectorAll("a[id^=\"edit_global_section_\"]");
    links.forEach((link) => {
        link.addEventListener("ajax:success", (event) => {
            const [_data, _status, xhr] = event.detail;
            const parent = link.parentElement;
            for (let elem = 0; parent.childNodes.length; elem++) {
                parent.childNodes[0].remove();
            };
            parent.insertAdjacentHTML("beforeend", xhr.responseText);
        });
        link.addEventListener("ajax:error", () => {
            link.insertAdjacentHTML("beforeend", "<p>ERROR</p>");
        });
    });

});
