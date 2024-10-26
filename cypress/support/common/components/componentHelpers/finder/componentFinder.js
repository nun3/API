import { getAllMappedComponents, getAllMappedComponentsWithIDReplace } from '../componentUtils';

export function findComponentByLabel(container, mappedComponents, fieldName) {
    return cy.get(container)
        .find(`label:contains("${fieldName}")`)
        .filter((_, element) => {
            return Cypress.$(element).text().trim() === fieldName;
        })
        .invoke('attr', 'for')
        .then((labelID) => {
            return cy.get(container).find(getAllMappedComponentsWithIDReplace(mappedComponents, labelID));
        }); 
}

export function findComponentByGenericComponent(genericComponent, container, mappedComponents, fieldName) {
    return cy.get(container)
            .find(getAllMappedComponents(mappedComponents)).then(($component) => {
                $component.find(genericComponent).filter((_, element) => {
                    Cypress.$(element).text().trim() === fieldName;
                });
            });
}


export function findComponentByMap(container, mappedComponents) {
    return cy.get(container)
        .find(getAllMappedComponents(mappedComponents))
        .first();
}