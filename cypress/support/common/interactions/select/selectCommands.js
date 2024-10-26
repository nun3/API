import { selectComponentMap } from '../../components/mapping/selectComponentMapping'
import { findComponentByLabel } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';
import { genericInterpreter } from '../../processor/interpreter/insertInterpreter';

Cypress.Commands.add('selectOption', (container, fieldName, value) => {
    findComponentByLabel(container, selectComponentMap, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), selectComponentMap);
        component.selectByOption({ selector: $field, value: genericInterpreter(value) });
    });
});

Cypress.Commands.add('fillAndSelectOption', (container, fieldName, fillValue, selectionValue) => {
    findComponentByLabel(container, selectComponentMap, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), selectComponentMap);
        component.clear($field);
        component.fill({ selector: $field, value: genericInterpreter(fillValue) });
        component.selectByOption({ selector: $field, value: genericInterpreter(selectionValue) });
    });
});

Cypress.Commands.add('removeOption', (container, fieldName, value) => {
    findComponentByLabel(container, selectComponentMap, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), selectComponentMap);
        component.remove({ selector: $field, value: genericInterpreter(value) });
    });
});