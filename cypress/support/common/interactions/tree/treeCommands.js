import { treeComponentMap } from '../../components/mapping/treeComponentMapping'
import { findComponentByMap } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';

Cypress.Commands.add('selectOptionInTree', (container, optionPath) => {
    findComponentByMap(container, treeComponentMap).then($component => {
        const component = getComponentByMap(getComponentType($component), treeComponentMap);
        component.select({ selector: $component, optionPath: optionPath });
    });
});