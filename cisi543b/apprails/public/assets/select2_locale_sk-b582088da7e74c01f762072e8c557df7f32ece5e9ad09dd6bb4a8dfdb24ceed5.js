!function(){if(jQuery&&jQuery.fn&&jQuery.fn.select2&&jQuery.fn.select2.amd)var e=jQuery.fn.select2.amd;e.define("select2/i18n/sk",[],function(){var t={2:function(e){return e?"dva":"dve"},3:function(){return"tri"},4:function(){return"\u0161tyri"}};return{errorLoading:function(){return"V\xfdsledky sa nepodarilo na\u010d\xedta\u0165."},inputTooLong:function(e){var n=e.input.length-e.maximum;return 1==n?"Pros\xedm, zadajte o jeden znak menej":2<=n&&n<=4?"Pros\xedm, zadajte o "+t[n](!0)+" znaky menej":"Pros\xedm, zadajte o "+n+" znakov menej"},inputTooShort:function(e){var n=e.minimum-e.input.length;return 1==n?"Pros\xedm, zadajte e\u0161te jeden znak":n<=4?"Pros\xedm, zadajte e\u0161te \u010fal\u0161ie "+t[n](!0)+" znaky":"Pros\xedm, zadajte e\u0161te \u010fal\u0161\xedch "+n+" znakov"},loadingMore:function(){return"Na\u010d\xedtanie \u010fal\u0161\xedch v\xfdsledkov\u2026"},maximumSelected:function(e){return 1==e.maximum?"M\xf4\u017eete zvoli\u0165 len jednu polo\u017eku":2<=e.maximum&&e.maximum<=4?"M\xf4\u017eete zvoli\u0165 najviac "+t[e.maximum](!1)+" polo\u017eky":"M\xf4\u017eete zvoli\u0165 najviac "+e.maximum+" polo\u017eiek"},noResults:function(){return"Nena\u0161li sa \u017eiadne polo\u017eky"},searching:function(){return"Vyh\u013ead\xe1vanie\u2026"},removeAllItems:function(){return"Odstr\xe1\u0148te v\u0161etky polo\u017eky"}}}),e.define,e.require}();