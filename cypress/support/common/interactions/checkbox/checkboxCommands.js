import { checkboxComponentMap } from '../../components/mapping/checkboxComponentMapping';
import { findComponentByLabel } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';

Cypress.Commands.add('checkCheckbox', (container, fieldname) => {
    findComponentByLabel(container, checkboxComponentMap, fieldname).then($field => {
        const component = getComponentByMap(getComponentType($field), checkboxComponentMap);
        component.check({selector: $field});
    });
});

Cypress.Commands.add('uncheckCheckbox', (container, fieldname) => {
    findComponentByLabel(container, checkboxComponentMap, fieldname).then($field => {
        const component = getComponentByMap(getComponentType($field), checkboxComponentMap);
        component.uncheck({selector: $field});
    });
});
