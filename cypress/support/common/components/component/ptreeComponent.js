export default class PTreeComponent {
    select({ selector, optionPath }) {
        const options = optionPath.split(' >> ');
        cy.get(selector)
            .find('p-treenode')
            .find(`.p-treenode-content[aria-label="${options[0]}"]`)
            .parent().then($treeItem => {
                if ($treeItem.attr('aria-expanded') === 'false') {
                    $treeItem.find('button').click();
                }
            });
            
        for (let i = 1; i < options.length; i++) {
            cy.get(selector)
                .find('ul.p-treenode-children')
                .find(`.p-treenode-content[aria-label="${options[i]}"]`)
                .click();
        }
    }
}