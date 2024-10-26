import PRadioButtonComponent from './pradiobuttonComponent';

export default class FieldsetComponent {
    select({ selector, option }) {
        cy.get(selector)
            .find('p-radiobutton')
            .find(`label:contains("${option}")`)
            .then(($radioButton) => {
                const radioButton = new PRadioButtonComponent();
                radioButton.select({ selector: $radioButton, option: option });
            });
    }
}
