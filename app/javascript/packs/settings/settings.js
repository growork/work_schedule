window.addEventListener("load", () => {


    let editGlobalSectionLinks = document.querySelectorAll("a[id^=\"edit_global_section_link_\"]");
    editGlobalSectionLinks.forEach((editGlobalSectionLink) => ajaxFunc(editGlobalSectionLink));

    let editEmployeeLinks = document.querySelectorAll("a[id^=\"edit_employee_link_\"]");
    editEmployeeLinks.forEach((editEmployeeLink) => ajaxFunc(editEmployeeLink));


    function ajaxFunc(link) {
        link.addEventListener("ajax:success", (event) => {
            const [_data, _status, xhr] = event.detail;

            let parentBlock = document.querySelector("[data-block-id='" + link.getAttribute("data-link-id") + "']");
            parentBlock.innerHTML = xhr.responseText;
        });

        link.addEventListener("ajax:error", () => {
            alert('Ошибка соединения!')
        });
    }
});

