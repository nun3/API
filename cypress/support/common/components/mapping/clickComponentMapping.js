import ButtonComponent from '../component/buttonComponent';
import PSelectButtonComponent from '../component/pselectbuttonComponent';

export const clickComponentMap ={
    'button': new ButtonComponent(),
    'p-selectbutton': new PSelectButtonComponent(),
}