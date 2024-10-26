import InputComponent from '../component/inputComponent';
import PInputMaskComponent from '../component/pinputmaskComponent';
import TextAreaComponent from '../component/textareaComponent';
import PCalendarComponent from '../component/pcalendarComponent';
import PAutoCompleteComponent from '../component/pautocompleteComponent';
import PEditorComponent from '../component/peditorComponent';   
import PSpinnerComponent from '../component/spinnerComponent';
import PInputNumber from '../component/pinputnumberComponent';

export const typeComponentMap = {
    'input': new InputComponent(),
    'p-inputmask': new PInputMaskComponent(),
    'textarea': new TextAreaComponent(),
    'p-calendar': new PCalendarComponent(),
    'p-autocomplete': new PAutoCompleteComponent(),
    'p-editor': new PEditorComponent(),
    'p-spinner': new PSpinnerComponent(),
    'p-inputnumber': new PInputNumber()
};