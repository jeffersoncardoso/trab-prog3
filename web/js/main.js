Vue.use(VueTheMask);

const config = {
  errorBagName: 'errors', // change if property conflicts
  fieldsBagName: 'fields', 
  delay: 0, 
  locale: 'pt_BR', 
  dictionary: null, 
  strict: true, 
  classes: false, 
  classNames: {
    touched: 'touched', // the control has been blurred
    untouched: 'untouched', // the control hasn't been blurred
    valid: 'valid', // model is valid
    invalid: 'invalid', // model is invalid
    pristine: 'pristine', // control has not been interacted with
    dirty: 'dirty' // control has been interacted with
  },
  events: 'input|blur',
  inject: true,
  validity: false,
  aria: true
};

Vue.use(VeeValidate, config);

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})