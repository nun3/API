import { radiobuttonComponentMap } from '../../components/mapping/radiobuttonComponentMapping'
import { fieldsetComponentMap } from '../../components/mapping/fieldsetComponentMapping'
import { findComponentByGenericComponent } from '../../components/componentHelpers/finder/componentFinder';
import { getComponentByMap, getComponentType } from '../../components/componentHelpers/componentUtils';

Cypress.Commands.add('selectRadioButton', (container, option) => {
    findComponentByGenericComponent('.p-radiobutton-label', container, radiobuttonComponentMap, option).then($radiobutton => {
        const component = getComponentByMap(getComponentType($radiobutton), radiobuttonComponentMap);
        component.select({ selector: $radiobutton, option: option});
    });
});

Cypress.Commands.add('selectRadioButtonInFieldSet', (container, option, fieldName) => {
    findComponentByGenericComponent('legend', container, fieldsetComponentMap, fieldName).then($fieldSet => {
        const component = getComponentByMap(getComponentType($fieldSet), fieldsetComponentMap);
        component.select({ selector: $fieldSet, option: option});
    });
});