import { typeComponentMap } from '../../components/mapping/typeComponentMapping'
import { findComponentByLabel } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';
import { genericInterpreter } from '../../processor/interpreter/insertInterpreter';


Cypress.Commands.add('fillField', (container, fieldName, value) => {
    findComponentByLabel(container, typeComponentMap, fieldName).then($field => {
        const component = getComponentByMap(getComponentType($field), typeComponentMap);
        component.clear($field);
        component.fill({ selector: $field, value: genericInterpreter(value) });
    });
});