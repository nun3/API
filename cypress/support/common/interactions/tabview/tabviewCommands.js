import { tabviewComponentMap } from '../../components/mapping/tabviewComponentMapping'
import { findComponentByMap } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';

Cypress.Commands.add('clickTab', (container, tabName) => {
    findComponentByMap(container, tabviewComponentMap).then($component => {
        const component = getComponentByMap(getComponentType($component), tabviewComponentMap);
        component.clickTab({ selector: $component, tabName: tabName });
    });
});