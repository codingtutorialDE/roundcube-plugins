(function(d){function e(b,a,c){var e=b.success,a=d.extend({},b.data||{},{"start-min":f(a,"u"),"start-max":f(c,"u"),singleevents:!0,"max-results":9999}),g=b.currentTimezone;g&&(a.ctz=g=g.replace(" ","_"));return d.extend({},b,{url:b.url.replace(/\/basic$/,"/full")+"?alt=json-in-script&callback=?",dataType:"jsonp",data:a,startParam:!1,endParam:!1,success:function(b){var c=[];b.feed.entry&&d.each(b.feed.entry,function(b,a){var h=a.gd$when[0].startTime,e=j(h,true),f=j(a.gd$when[0].endTime,true),h=h.indexOf("T")==
-1,i;d.each(a.link,function(b,a){if(a.type=="text/html"){i=a.href;g&&(i=i+((i.indexOf("?")==-1?"?":"&")+"ctz="+g))}});h&&k(f,-1);c.push({id:a.gCal$uid.value,title:a.title.$t,url:i,start:e,end:f,allDay:h,location:a.gd$where[0].valueString,description:a.content.$t})});var a=[c].concat(Array.prototype.slice.call(arguments,1)),a=l(e,this,a);return d.isArray(a)?a:c}})}var c=d.fullCalendar,f=c.formatDate,j=c.parseISO8601,k=c.addDays,l=c.applyAll;c.sourceNormalizers.push(function(b){if("gcal"==b.dataType||
void 0===b.dataType&&(b.url||"").match(/^(http|https):\/\/www.google.com\/calendar\/feeds\//))b.dataType="gcal",void 0===b.editable&&(b.editable=!1)});c.sourceFetchers.push(function(b,a,c){if("gcal"==b.dataType)return e(b,a,c)});c.gcalFeed=function(b,a){return d.extend({},a,{url:b,dataType:"gcal"})}})(jQuery);
