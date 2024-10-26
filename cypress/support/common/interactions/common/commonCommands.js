
import { checkboxComponentMap } from '../../components/mapping/checkboxComponentMapping';
import { radiobuttonComponentMap } from '../../components/mapping/radiobuttonComponentMapping';
import { selectComponentMap } from '../../components/mapping/selectComponentMapping';
import { typeComponentMap } from '../../components/mapping/typeComponentMapping';
import { customComponentMap } from '../../components/mapping/customComponentMapping';
import { findComponentByLabel } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';

const allComponentMapping = {
    ...checkboxComponentMap,
    ...radiobuttonComponentMap,
    ...selectComponentMap,
    ...typeComponentMap,
    ...customComponentMap
};

Cypress.Commands.add('setFocusField', (container, fieldName) => {
    findComponentByLabel(container, allComponentMapping, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), allComponentMapping);
        component.focus($field);
    });
});

Cypress.Commands.add('clickButtonOnField', (container, fieldName) => {
    findComponentByLabel(container, allComponentMapping, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), allComponentMapping);
        component.click($field);
    });
});

Cypress.Commands.add('clickText', (container, text) => {
    cy.wrap(container).contains(text).click();
});
