export function getComponentType($field) {
    return $field.get(0).tagName.toLowerCase();
}

export function getComponentByMap(type, componentMap) {
    if (!componentMap[type]) {
        throw new Error(`Component type '${type}' not found in mapping.`);
    }
    return componentMap[type];
}

export function getAllMappedComponents(componentMap) {
    if (Object.keys(componentMap).length === 1) {
        return Object.keys(componentMap)[0];
    }
    return Object.keys(componentMap).join(', ');
}

export function getAllMappedComponentsWithIDReplace(componentMap, id) {
    return Object.keys(componentMap).map(key => `${key}#${id}, ${key}[inputid="${id}"]`).join(', ');
}