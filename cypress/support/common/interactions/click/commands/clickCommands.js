import { clickComponentMap } from '../../../components/mapping/clickComponentMapping';
import { findComponentByLabel } from '../../../components/componentHelpers/finder/componentFinder';
import { getAllMappedComponents, getComponentType, getComponentByMap } from  '../../../components/componentHelpers/componentUtils'


Cypress.Commands.add('clickButton', (container, button) => {
    cy.get(container).find(getAllMappedComponents(clickComponentMap)).contains(button).parent().then($button => {
        const component = getComponentByMap(getComponentType($button), clickComponentMap);
        component.click({ selector: $button});
    })
});  // Método puxando pelo .parent, contém um span dentro do botão.

Cypress.Commands.add('clickSelectButton', (container, fieldName, button) => {
    findComponentByLabel(container, clickComponentMap, fieldName).then($button => {
        const component = getComponentByMap(getComponentType($button), clickComponentMap);
        component.click({ selector: $button, button: button});
    });
});