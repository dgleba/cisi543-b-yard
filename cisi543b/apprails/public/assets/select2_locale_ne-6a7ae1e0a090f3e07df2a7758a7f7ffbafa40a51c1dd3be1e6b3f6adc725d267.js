!function(){if(jQuery&&jQuery.fn&&jQuery.fn.select2&&jQuery.fn.select2.amd)var n=jQuery.fn.select2.amd;n.define("select2/i18n/ne",[],function(){return{errorLoading:function(){return"\u0928\u0924\u093f\u091c\u093e\u0939\u0930\u0941 \u0926\u0947\u0916\u093e\u0909\u0928 \u0938\u0915\u093f\u090f\u0928\u0964"},inputTooLong:function(n){var e=n.input.length-n.maximum,u="\u0915\u0943\u092a\u092f\u093e "+e+" \u0905\u0915\u094d\u0937\u0930 \u092e\u0947\u091f\u093e\u0909\u0928\u0941\u0939\u094b\u0938\u094d\u0964";return 1!=e&&(u+="\u0915\u0943\u092a\u092f\u093e "+e+" \u0905\u0915\u094d\u0937\u0930\u0939\u0930\u0941 \u092e\u0947\u091f\u093e\u0909\u0928\u0941\u0939\u094b\u0938\u094d\u0964"),u},inputTooShort:function(n){return"\u0915\u0943\u092a\u092f\u093e \u092c\u093e\u0901\u0915\u0940 \u0930\u0939\u0947\u0915\u093e "+(n.minimum-n.input.length)+" \u0935\u093e \u0905\u0930\u0941 \u0927\u0947\u0930\u0948 \u0905\u0915\u094d\u0937\u0930\u0939\u0930\u0941 \u092d\u0930\u094d\u0928\u0941\u0939\u094b\u0938\u094d\u0964"},loadingMore:function(){return"\u0905\u0930\u0941 \u0928\u0924\u093f\u091c\u093e\u0939\u0930\u0941 \u092d\u0930\u093f\u0901\u0926\u0948\u091b\u0928\u094d \u2026"},maximumSelected:function(n){var e="\u0924\u0901\u092a\u093e\u0908 "+n.maximum+" \u0935\u0938\u094d\u0924\u0941 \u092e\u093e\u0924\u094d\u0930 \u091b\u093e\u0928\u094d\u0928 \u092a\u093e\u0909\u0901\u0928\u0941\u0939\u0941\u0928\u094d\u091b\u0964";return 1!=n.maximum&&(e="\u0924\u0901\u092a\u093e\u0908 "+n.maximum+" \u0935\u0938\u094d\u0924\u0941\u0939\u0930\u0941 \u092e\u093e\u0924\u094d\u0930 \u091b\u093e\u0928\u094d\u0928 \u092a\u093e\u0909\u0901\u0928\u0941\u0939\u0941\u0928\u094d\u091b\u0964"),e},noResults:function(){return"\u0915\u0941\u0928\u0948 \u092a\u0928\u093f \u0928\u0924\u093f\u091c\u093e \u092d\u0947\u091f\u093f\u090f\u0928\u0964"},searching:function(){return"\u0916\u094b\u091c\u093f \u0939\u0941\u0901\u0926\u0948\u091b\u2026"}}}),n.define,n.require}();