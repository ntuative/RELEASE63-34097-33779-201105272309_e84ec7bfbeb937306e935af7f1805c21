package com.sulake.habbo.sound
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.handshake.AuthenticationOKMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.sound.SoundSettingsEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetSoundSettingsComposer;
   import com.sulake.habbo.communication.messages.outgoing.sound.SetSoundSettingsComposer;
   import com.sulake.habbo.communication.messages.parser.sound.SoundSettingsParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.notifications.IHabboNotifications;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.sound.events.TraxSongLoadEvent;
   import com.sulake.habbo.sound.music.HabboMusicController;
   import com.sulake.habbo.sound.object.HabboSound;
   import com.sulake.habbo.sound.trax.TraxData;
   import com.sulake.habbo.sound.trax.TraxSample;
   import com.sulake.habbo.sound.trax.TraxSequencer;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboNotifications;
   import com.sulake.iid.IIDRoomEngine;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class HabboSoundManagerFlash10 extends Component implements IHabboSoundManager, IUpdateReceiver
   {
      
      private static const const_1470:int = 60;
      
      private static const const_1472:int = 25165823;
      
      private static const const_1471:int = 16777215;
       
      
      private var var_182:IHabboConfigurationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _connection:IConnection;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_960:IHabboNotifications;
      
      private var var_933:Number = 1.0;
      
      private var var_620:Map;
      
      private var var_1178:Array;
      
      private var var_257:Map;
      
      private var var_961:Map;
      
      private var var_764:int = -1;
      
      private var var_765:TraxSequencer;
      
      private var var_239:IHabboMusicController;
      
      private var var_1177:Map;
      
      private var var_1471:ByteArray;
      
      private var var_2476:Boolean = false;
      
      public function HabboSoundManagerFlash10(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null, param4:Boolean = true)
      {
         this.var_620 = new Map();
         this.var_1178 = [];
         this.var_257 = new Map();
         this.var_961 = new Map();
         this.var_1177 = new Map();
         this.var_1471 = new ByteArray();
         super(param1,param2,param3);
         if(param4)
         {
            queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationInit);
            queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
            queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
            queueInterface(new IIDHabboNotifications(),this.onNotificationsReady);
         }
         events.addEventListener(TraxSongLoadEvent.const_760,this.onTraxLoadComplete);
         registerUpdateReceiver(this,1);
         Logger.log("Sound manager 10 init");
      }
      
      public function get musicController() : IHabboMusicController
      {
         return this.var_239;
      }
      
      public function get volume() : Number
      {
         return this.var_933;
      }
      
      public function set volume(param1:Number) : void
      {
         this.updateVolumeSetting(param1);
         this.storeVolumeSetting();
      }
      
      public function set previewVolume(param1:Number) : void
      {
         this.updateVolumeSetting(param1);
      }
      
      override public function dispose() : void
      {
         this._connection = null;
         if(this.var_239)
         {
            this.var_239.dispose();
            this.var_239 = null;
         }
         if(this.var_257)
         {
            this.var_257.dispose();
            this.var_257 = null;
         }
         if(this.var_961)
         {
            this.var_961.dispose();
            this.var_961 = null;
         }
         if(this.var_620)
         {
            this.var_620.dispose();
            this.var_620 = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this.var_182)
         {
            this.var_182.release(new IIDHabboConfigurationManager());
            this.var_182 = null;
         }
         if(this._roomEngine)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this.var_960)
         {
            this.var_960.release(new IIDHabboNotifications());
            this.var_960 = null;
         }
         super.dispose();
      }
      
      public function playSound(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:HabboSound = this.var_961.getValue(param1);
         if(_loc2_ == null)
         {
            _loc3_ = "";
            switch(param1)
            {
               case HabboSoundTypesEnum.const_1265:
                  _loc3_ = "sound_call_for_help";
                  break;
               case HabboSoundTypesEnum.const_1687:
                  _loc3_ = "sound_guide_received_invitation";
                  break;
               case HabboSoundTypesEnum.const_1168:
                  _loc3_ = "sound_console_new_message";
                  break;
               case HabboSoundTypesEnum.const_1284:
                  _loc3_ = "sound_console_message_sent";
                  break;
               case HabboSoundTypesEnum.const_1343:
                  _loc3_ = "sound_catalogue_pixels";
                  break;
               case HabboSoundTypesEnum.const_1219:
                  _loc3_ = "sound_catalogue_cash";
                  break;
               case HabboSoundTypesEnum.const_1911:
                  _loc3_ = "sound_respect_received";
                  break;
               default:
                  Logger.log("HabboSoundManagerFlash10: Unknown sound request: " + param1);
            }
            _loc4_ = assets.getAssetByName(_loc3_);
            _loc5_ = _loc4_.content as Sound;
            if(_loc5_ == null)
            {
               return;
            }
            _loc2_ = new HabboSound(_loc5_);
            this.var_961.add(param1,_loc2_);
         }
         _loc2_.volume = this.var_933;
         _loc2_.play();
      }
      
      private function loadSample(param1:int) : void
      {
         if(this.var_182 == null)
         {
            return;
         }
         var _loc2_:String = this.var_182.getKey("flash.dynamic.download.url","furniture/");
         _loc2_ += this.var_182.getKey("flash.dynamic.download.samples.template","mp3/sound_machine_sample_%typeid%.mp3");
         _loc2_ = _loc2_.replace(/%typeid%/,param1.toString());
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         var _loc4_:Sound = new Sound();
         _loc4_.addEventListener(Event.COMPLETE,this.onSampleLoadComplete);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         _loc4_.load(_loc3_);
         this.var_620.add(_loc4_,param1);
      }
      
      public function loadTraxSong(param1:int, param2:String) : IHabboSound
      {
         if(this.var_765 != null)
         {
            return this.addTraxSongForDownload(param1,param2);
         }
         var _loc3_:TraxSequencer = this.createTraxInstance(param1,param2);
         if(!_loc3_.ready)
         {
            this.var_765 = _loc3_;
            this.var_764 = param1;
         }
         return _loc3_ as IHabboSound;
      }
      
      private function addTraxSongForDownload(param1:int, param2:String) : IHabboSound
      {
         var _loc3_:TraxSequencer = this.createTraxInstance(param1,param2,false);
         if(!_loc3_.ready)
         {
            this.var_1177.add(param1,_loc3_);
         }
         return _loc3_;
      }
      
      private function createTraxInstance(param1:int, param2:String, param3:Boolean = true) : TraxSequencer
      {
         var _loc4_:TraxData = new TraxData(param2);
         var _loc5_:TraxSequencer = new TraxSequencer(param1,_loc4_,this.var_257,events);
         _loc5_.volume = this.var_933;
         this.validateSampleAvailability(_loc5_,param3);
         return _loc5_;
      }
      
      private function validateSampleAvailability(param1:TraxSequencer, param2:Boolean) : void
      {
         var _loc3_:TraxData = param1.traxData;
         var _loc4_:Array = _loc3_.getSampleIds();
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length)
         {
            if(this.var_257.getValue(int(_loc4_[_loc6_])) == null)
            {
               if(param2)
               {
                  this.loadSample(int(_loc4_[_loc6_]));
               }
               _loc5_ = true;
            }
            _loc6_++;
         }
         if(_loc5_)
         {
            param1.ready = false;
         }
         else
         {
            param1.ready = true;
         }
      }
      
      public function notifyPlayedSong(param1:String, param2:String) : void
      {
         if(this.var_960 == null)
         {
            return;
         }
         this.var_960.addSongPlayingNotification(param1,param2);
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            this.var_182 = param2 as IHabboConfigurationManager;
            if(this.var_182.getBoolean("trax.player.sample.memory.purge.enabled",false))
            {
               this.var_2476 = true;
            }
         }
      }
      
      protected function setHabboConfiguration(param1:IHabboConfigurationManager) : void
      {
         this.var_182 = param1;
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            this._communication = IHabboCommunicationManager(param2);
            this._communication.addHabboConnectionMessageEvent(new AuthenticationOKMessageEvent(this.onAuthenticationOK));
         }
      }
      
      private function onAuthenticationOK(param1:IMessageEvent) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(this.onConnectionReady);
         if(_loc2_ != null)
         {
            _loc2_.addMessageEvent(new SoundSettingsEvent(this.onSoundSettingsEvent));
            _loc2_.send(new GetSoundSettingsComposer());
            this.onConnectionReady(_loc2_);
            this.initMusicController();
         }
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._roomEngine = IRoomEngine(param2);
         this.initMusicController();
      }
      
      private function onNotificationsReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 == null)
         {
            return;
         }
         this.var_960 = IHabboNotifications(param2);
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
         }
         this.initMusicController();
      }
      
      private function initMusicController() : void
      {
         if(this.var_182 == null || this._connection == null || this._roomEngine == null || this.var_239 != null)
         {
            return;
         }
         this.var_239 = new HabboMusicController(this,events,this._roomEngine.events,this._connection);
      }
      
      protected function setMusicController(param1:IHabboMusicController) : void
      {
         this.var_239 = param1;
      }
      
      private function onSampleLoadComplete(param1:Event) : void
      {
         var _loc2_:Sound = param1.target as Sound;
         this.var_1178.push(_loc2_);
      }
      
      private function onTraxLoadComplete(param1:Event) : void
      {
         var _loc2_:TraxSongLoadEvent = param1 as TraxSongLoadEvent;
         if(_loc2_ == null)
         {
            return;
         }
         if(this.var_239 == null)
         {
            return;
         }
         this.var_239.onSongLoaded(_loc2_.id);
      }
      
      private function ioErrorHandler(param1:Event) : void
      {
         events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_1663,this.var_764));
         this.var_764 = -1;
         this.var_765 = null;
      }
      
      private function storeVolumeSetting() : void
      {
         if(this._connection != null)
         {
            this._connection.send(new SetSoundSettingsComposer(int(this.var_933 * 100)));
         }
      }
      
      private function updateVolumeSetting(param1:Number) : void
      {
         this.var_933 = param1;
         this.var_239.updateVolume(this.var_933);
      }
      
      private function onSoundSettingsEvent(param1:IMessageEvent) : void
      {
         var _loc2_:SoundSettingsEvent = param1 as SoundSettingsEvent;
         var _loc3_:SoundSettingsParser = _loc2_.getParser() as SoundSettingsParser;
         if(_loc3_.volume == 1 || _loc3_.volume == 0)
         {
            this.updateVolumeSetting(_loc3_.volume * 1);
         }
         else
         {
            this.updateVolumeSetting(_loc3_.volume / 100);
         }
      }
      
      private function processLoadedSample(param1:Sound) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         if(this.var_620.getValue(param1) != null)
         {
            _loc2_ = this.var_620.remove(param1);
            if(this.var_257.getValue(_loc2_) == null)
            {
               this.var_1471.clear();
               _loc3_ = param1.length;
               param1.extract(this.var_1471,int(_loc3_ * 44.1));
               _loc4_ = new TraxSample(this.var_1471,_loc2_,TraxSample.const_1729,TraxSample.const_1760);
               this.var_257.add(_loc2_,_loc4_);
            }
         }
      }
      
      private function processLoadedSamples() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(this.var_1178.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = _loc1_;
            while(_loc2_ - _loc1_ < const_1470 && this.var_1178.length > 0)
            {
               _loc3_ = this.var_1178.splice(0,1)[0];
               this.processLoadedSample(_loc3_);
               _loc2_ = getTimer();
            }
            if(this.var_620.length == 0 && this.var_764 != -1)
            {
               this.var_765.ready = true;
               _loc4_ = this.var_764;
               this.var_764 = -1;
               this.var_765 = null;
               events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_760,_loc4_));
               if(this.var_2476)
               {
                  this.processSampleMemoryUsage();
               }
            }
         }
      }
      
      private function loadNextSong() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_765 == null && this.var_1177.length > 0)
         {
            _loc1_ = this.var_1177.getKey(0);
            _loc2_ = this.var_1177.remove(_loc1_);
            if(_loc2_ != null && !_loc2_.disposed)
            {
               this.validateSampleAvailability(_loc2_,true);
               if(_loc2_.ready)
               {
                  events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_760,_loc1_));
               }
               else
               {
                  this.var_765 = _loc2_;
                  this.var_764 = _loc1_;
               }
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         this.processLoadedSamples();
         this.loadNextSong();
      }
      
      private function logSampleUsage() : void
      {
      }
      
      private function processSampleMemoryUsage() : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc1_:* = 0;
         var _loc2_:* = [];
         var _loc3_:Array = this.var_239.samplesIdsInUse;
         var _loc4_:int = 0;
         while(_loc4_ < this.var_257.length)
         {
            _loc5_ = this.var_257.getKey(_loc4_);
            _loc6_ = this.var_257.getWithIndex(_loc4_);
            if(_loc6_.usageCount != 0 && _loc3_.indexOf(_loc5_) == -1)
            {
               _loc2_.push(_loc6_);
            }
            _loc1_ += _loc6_.length;
            _loc4_++;
         }
         if(_loc1_ > const_1472)
         {
            _loc7_ = [];
            Logger.log("Sample memory limit reached, clearing the oldest and least frequently used samples");
            _loc2_.sort(this.orderUsageAndTimeStamp);
            _loc8_ = 0;
            _loc9_ = 0;
            while(_loc8_ < _loc1_ - const_1471 && _loc9_ < _loc2_.length)
            {
               _loc10_ = _loc2_[_loc9_++];
               _loc8_ += _loc10_.length;
               _loc7_.push(_loc10_.id);
            }
            _loc2_ = null;
            if(_loc7_.length > 0)
            {
               for each(_loc11_ in _loc7_)
               {
                  Logger.log("Purging sample : " + _loc11_);
                  _loc12_ = this.var_257.getValue(_loc11_) as TraxSample;
                  _loc12_.dispose();
                  this.var_257.remove(_loc11_);
               }
               this.var_239.samplesUnloaded(_loc7_);
            }
         }
      }
      
      private function orderUsageAndTimeStamp(param1:TraxSample, param2:TraxSample) : int
      {
         if(param1.usageCount < param2.usageCount)
         {
            return -1;
         }
         if(param1.usageCount > param2.usageCount)
         {
            return 1;
         }
         if(param1.usageTimeStamp < param2.usageTimeStamp)
         {
            return -1;
         }
         if(param1.usageTimeStamp > param2.usageTimeStamp)
         {
            return 1;
         }
         return 0;
      }
   }
}
