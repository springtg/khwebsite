﻿Type.registerNamespace(Telerik.Web.UI);
Telerik.Web.UI.ScrollerOrientation=function(){};
Telerik.Web.UI.ScrollerOrientation.prototype={Vertical0,Horizontal1};
Telerik.Web.UI.ScrollerOrientation.registerEnum(Telerik.Web.UI.ScrollerOrientation);
Telerik.Web.UI.ScrollerSpeed=function(){};
Telerik.Web.UI.ScrollerSpeed.prototype={Invalid0,Slow1,Medium2,Fast3};
Telerik.Web.UI.ScrollerSpeed.registerEnum(Telerik.Web.UI.ScrollerSpeed);
Telerik.Web.UI.ArrowPosition=function(){};
Telerik.Web.UI.ArrowPosition.prototype={Top0,Bottom1,Left2,Right3};
Telerik.Web.UI.ArrowPosition.registerEnum(Telerik.Web.UI.ArrowPosition);
Telerik.Web.UI.Scroller=function(a,b,c){this._timerInterval=10;
this._scrolledElement=a;
this._element=b;
this._orientation=c;
this._minPosition=0;
this._maxPosition=null;
this._currentPosition=0;
this._speed=Telerik.Web.UI.ScrollerSpeed.Invalid;
this._direction=0;
this._events=null;
this._timer=null;
this._onTickDelegate=null;
};
Telerik.Web.UI.Scroller.prototype={initializefunction(){this._onTickDelegate=Function.createDelegate(this,this._onTick);
this._timer=new Telerik.Web.Timer();
this._timer.set_interval(this._timerInterval);
this._timer.add_tick(this._onTickDelegate);
},disposefunction(){if(this._timer){this._timer.dispose();
}this._onTickDelegate=null;
this._events=null;
},get_elementfunction(){return this._element;
},get_eventsfunction(){if(!this._events){this._events=new Sys.EventHandlerList();
}return this._events;
},add_positionChangedfunction(a){this.get_events().addHandler(positionChanged,a);
},remove_positionChangedfunction(a){this.get_events().removeHandler(positionChanged,a);
},setScrollingLimitsfunction(b,a){this._minPosition=b;
this._maxPosition=Math.min(this._getElementSize(),a);
},isAtMinPositionfunction(){return this._currentPosition=this._minPosition;
},isAtMaxPositionfunction(){return this._currentPosition=this._maxPosition;
},resetStatefunction(){this._resetOverflowStyle();
this._scrollTo(0);
},startScrollfunction(b,a){this._speed=b;
this._direction=a;
this._timer.set_enabled(true);
},changeScrollSpeedfunction(a){this._speed=a;
},stopScrollfunction(){this._speed=Telerik.Web.UI.ScrollerSpeed.Invalid;
this._direction=0;
this._timer.set_enabled(false);
},scrollToMaxPositionfunction(){this._scrollTo(this._maxPosition);
},_onTickfunction(){var a=this._currentPosition+(this._directionthis._speed);
a=Math.max(a,this._minPosition);
a=Math.min(a,this._maxPosition);
this._scrollTo(a);
if(a==this._minPositiona==this._maxPosition){this.stopScroll();
}},_scrollTofunction(b){var a=left;
if(this._orientation==Telerik.Web.UI.ScrollerOrientation.Vertical){a=top;
}this._currentPosition=b;
this._scrolledElement.style[a]=-b+px;
this._raiseEvent(positionChanged,Sys.EventArgs.Empty);
},_resetOverflowStylefunction(){if($telerik.isIE){this._element.style.overflow=visible;
if(this._orientation==Telerik.Web.UI.ItemFlow.Vertical){this._element.style.overflowX=visible;
this._element.style.overflowY=hidden;
}else{this._element.style.overflowX=hidden;
this._element.style.overflowY=hidden;
}}else{this._element.style.overflow=hidden;
}},_getElementSizefunction(){if(this._orientation==Telerik.Web.UI.ScrollerOrientation.Vertical){return this._scrolledElement.offsetHeight;
}else{return this._scrolledElement.offsetWidth;
}},_raiseEventfunction(b,c){var a=this.get_events().getHandler(b);
if(a){if(!c){c=Sys.EventArgs.Empty;
}a(this,c);
}}};
Telerik.Web.UI.Scroller.registerClass(Telerik.Web.UI.Scroller,null,Sys.IDisposable);

if(typeof(Sys)!=='undefined')Sys.Application.notifyScriptLoaded();