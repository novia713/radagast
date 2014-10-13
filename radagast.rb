# -*- coding: utf-8

require 'gtk2'
require 'pp'
require 'set'
require './arrs.rb'


window = Gtk::Window.new(Gtk::Window::TOPLEVEL)
window.set_title ( "Radagast :: Module Drush Assistant" )
window.border_width = 10
window.signal_connect('delete_event') { Gtk.main_quit }
window.set_default_size 650, 400

white = Gdk::Color.new(65535, 65535, 65535)
red = Gtk::Style.new
blue = Gtk::Style.new
grey = Gtk::Style.new
red.set_bg(Gtk::STATE_NORMAL, 65535, 32768, 0)
blue.set_bg(Gtk::STATE_NORMAL, 0, 65535, 32768) 
grey.set_bg(Gtk::STATE_NORMAL, 49152, 49152, 49152)
window.modify_bg(Gtk::STATE_NORMAL, white)



image = Gtk::Image.new("radagast.jpg")


box    = Gtk::HBox.new(false, 10)
box2   = Gtk::VBox.new(false, 10)
box3   = Gtk::HBox.new(false, 10)
box4   = Gtk::HBox.new(false, 10)


vbox1  = Gtk::VBox.new(false, 10)
vbox2  = Gtk::HBox.new(false, 10)
vbox3  = Gtk::HBox.new(false, 10)
vbox4  = Gtk::HBox.new(false, 10)
vbox5  = Gtk::HBox.new(false, 10)
vbox6  = Gtk::HBox.new(false, 10)
vbox7  = Gtk::HBox.new(false, 10)
vbox8  = Gtk::HBox.new(false, 10)
vbox9  = Gtk::HBox.new(false, 10)
vbox10 = Gtk::HBox.new(false, 10)
vbox11 = Gtk::HBox.new(false, 10)
vbox12 = Gtk::HBox.new(false, 10)
vbox13 = Gtk::HBox.new(false, 10)
vbox14 = Gtk::HBox.new(false, 10)
vbox15 = Gtk::HBox.new(false, 10)
vbox16 = Gtk::HBox.new(false, 10)
vbox17 = Gtk::HBox.new(false, 10)
vbox18 = Gtk::HBox.new(false, 10)

@arrdis     = []
@themes     = []
@javascript = []
@ds         = []
@context    = []
@utils      = []
@utils2     = []
@entity     = []
@rabbithole = []
@varios     = []
@migrate    = []
@webform    = []
@date       = []
@references = []
@views      = []
@views2     = []
@user       = []
@admin      = []

ARRDIS.each { |name| 
    name = Gtk::CheckButton.new(name)
    name.active = true
	vbox1.pack_start(name, false, true, 0)  
    @arrdis  << name
} 

THEMES.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox2.pack_start(name, false, true, 0)  
    @themes  << name
} 
JAVASCRIPT.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox3.pack_start(name, false, true, 0)     
    @javascript  << name
}

DS.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox4.pack_start(name, false, true, 0)   
    @ds  << name
}

CONTEXT.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox5.pack_start(name, false, true, 0) 
    @context  << name
}

UTILS.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox6.pack_start(name, false, true, 0)  
    @utils  << name
}

UTILS2.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox7.pack_start(name, false, true, 0) 
    @utils2  << name
}

ENTITY.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox8.pack_start(name, false, true, 0) 
    @entity  << name
}

RABBITHOLE.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox9.pack_start(name, false, true, 0) 
    @rabbithole  << name
}

VARIOS.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox10.pack_start(name, false, true, 0)   
    @varios  << name
}

MIGRATE.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox11.pack_start(name, false, true, 0)   
    @migrate  << name
}

WEBFORM.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox12.pack_start(name, false, true, 0)   
    @webform  << name
}

DATE.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox13.pack_start(name, false, true, 0)   
    @date  << name
}

REFERENCES.each { |name| 
    name = Gtk::CheckButton.new(name, falsebox6   = Gtk::HBox.new(false, 10))
    name.active = true
	vbox14.pack_start(name, false, true, 0)   
    @references  << name
}

VIEWS.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox15.pack_start(name, false, true, 0)   
    @views  << name
}

USER.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox16.pack_start(name, false, true, 0)   
    @user  << name
}

VIEWS2.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox17.pack_start(name, false, true, 0)   
    @views2  << name
}

ADMIN.each { |name| 
    name = Gtk::CheckButton.new(name, false)
    name.active = true
	vbox18.pack_start(name, false, true, 0)   
    @admin  << name
}

close  = Gtk::Button.new(Gtk::Stock::CLOSE)
close.set_style red 
close.signal_connect('clicked') { Gtk.main_quit }

ok  = Gtk::Button.new(Gtk::Stock::OK)
ok.set_style blue 



ok.signal_connect('clicked') { 
    
    
    ##########################
    ### ... PROCESSING ... ###
    ##########################
    @arrdis.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush dis -y #{e.label} &> radagast.log" ) 
        end
    } 
    
    @themes.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @javascript.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @ds.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @context.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @utils.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @utils2.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @entity.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @rabbithole.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @varios.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @migrate.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @webform.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @date.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @references.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @user.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @views.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @views2.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
        
    @admin.each { |e| 
        if (e.active? === true)  then 
            #print e.label + "\n\r"
            system( "drush en -y #{e.label} &>> radagast.log" ) 
        end
    }
    
    `drush --yes updb &>> radagast.log` 
    ##########################
    ### END PROCESSING ... ###
    ##########################
    dialog = Gtk::MessageDialog.new(window, 
                                Gtk::Dialog::DESTROY_WITH_PARENT,
                                Gtk::MessageDialog::INFO,
                                Gtk::MessageDialog::BUTTONS_CLOSE,
                                "Operation finished. See radagast.log for more info.")
    dialog.run
    dialog.destroy
}

        
button2 = Gtk::Button.new("Unselect all")
button2.set_style grey
vbox2.pack_start(button2,  false, true, 0)
        
button2.signal_connect("clicked") { 			
    @themes.each { |e| 
        e.set_active(false)
        button2.hide()
    }
}
        
button3 = Gtk::Button.new("Unselect all")
button3.set_style grey
vbox3.pack_start(button3,  false, true, 0)
        
button3.signal_connect("clicked") { 			
    @javascript.each { |e| 
        e.set_active(false)
        button3.hide()
    }
}
        
button4 = Gtk::Button.new("Unselect all")
button4.set_style grey
vbox4.pack_start(button4,  false, true, 0)
        
button4.signal_connect("clicked") { 			
    @ds.each { |e| 
        e.set_active(false)
        button4.hide()
    }
}
        
button5 = Gtk::Button.new("Unselect all")
button5.set_style grey
vbox5.pack_start(button5,  false, true, 0)
        
button5.signal_connect("clicked") { 			
    @context.each { |e| 
        e.set_active(false)
        button5.hide()
    }
}
        
button6 = Gtk::Button.new("Unselect all")
button6.set_style grey
vbox6.pack_start(button6,  false, true, 0)
        
button6.signal_connect("clicked") { 			
    @utils.each { |e| 
        e.set_active(false)
        button6.hide()
    }
}
        
button7 = Gtk::Button.new("Unselect all")
button7.set_style grey
vbox7.pack_start(button7,  false, true, 0)
        
button7.signal_connect("clicked") { 			
    @utils2.each { |e| 
        e.set_active(false)
        button7.hide()
    }
}
        
button8 = Gtk::Button.new("Unselect all")
button8.set_style grey
vbox8.pack_start(button8,  false, true, 0)
        
button8.signal_connect("clicked") { 			
    @entity.each { |e| 
        e.set_active(false)
        button8.hide()
    }
}
        
button9 = Gtk::Button.new("Unselect all")
button9.set_style grey
vbox9.pack_start(button9,  false, true, 0)
        
button9.signal_connect("clicked") { 			
    @rabbithole.each { |e| 
        e.set_active(false)
        button9.hide()
    }
}
        
button10 = Gtk::Button.new("Unselect all")
button10.set_style grey
vbox10.pack_start(button10,  false, true, 0)
        
button10.signal_connect("clicked") { 			
    @varios.each { |e| 
        e.set_active(false)
        button10.hide()
    }
}
        
button11 = Gtk::Button.new("Unselect all")
button11.set_style grey
vbox11.pack_start(button11,  false, true, 0)
        
button11.signal_connect("clicked") { 			
    @migrate.each { |e| 
        e.set_active(false)
        button11.hide()
    }
}
        
        
button12 = Gtk::Button.new("Unselect all")
button12.set_style grey
vbox12.pack_start(button12,  false, true, 0)
        
button12.signal_connect("clicked") { 			
    @webform.each { |e| 
        e.set_active(false)
        button12.hide()
    }
}
        
button13 = Gtk::Button.new("Unselect all")
button13.set_style grey
vbox13.pack_start(button13,  false, true, 0)
        
button13.signal_connect("clicked") { 			
    @date.each { |e| 
        e.set_active(false)
        button13.hide()
    }
}
        
        
button14 = Gtk::Button.new("Unselect all")
button14.set_style grey
vbox14.pack_start(button14,  false, true, 0)
        
button14.signal_connect("clicked") { 			
    @references.each { |e| 
        e.set_active false 
        button14.hide()
    }
}
        
button15 = Gtk::Button.new("Unselect all")
button15.set_style grey
vbox15.pack_start(button15,  false, true, 0)
        
button15.signal_connect("clicked") { 			
    @views.each { |e| 
        e.set_active false
        button15.hide()
    }
}
        
        
button16 = Gtk::Button.new("Unselect all")
button16.set_style grey
vbox16.pack_start(button16,  false, true, 0)
        
button16.signal_connect("clicked") { 			
    @user.each { |e| 
        e.set_active false 
        button16.hide()
    }
}
        
button17 = Gtk::Button.new("Unselect all")
button17.set_style grey
vbox17.pack_start(button17,  false, true, 0)
        
button17.signal_connect("clicked") { 			
    @views2.each { |e| 
        e.set_active false
        button17.hide()
    }
}
        
        
button18 = Gtk::Button.new("Unselect all")
button18.set_style grey
vbox18.pack_start(button18,  false, true, 0)
        
button18.signal_connect("clicked") { 			
    @admin.each { |e| 
        e.set_active false 
        button18.hide()
    }
}

vbox1.pack_start(image,  false, true, 0)
vbox1.pack_start(close,  false, true, 0)
vbox1.pack_start(ok,  false, true, 0)

#Gtk.modify_base(Gtk::STATE_INSENSITIVE, Gdk::Color.parse("yellow"))

frame1 = Gtk::Frame.new( "Deshabilitar")
frame1.set_shadow_type( Gtk::SHADOW_ETCHED_IN )
frame1.set_style grey
frame1.add( vbox1 )

frame2 = Gtk::Frame.new( "Themes" )
frame2.set_shadow_type( Gtk::SHADOW_IN )
frame2.add( vbox2 )



frame3 = Gtk::Frame.new( "Javascript" )
frame3.set_shadow_type( Gtk::SHADOW_OUT )
frame3.add( vbox3 )

frame4 = Gtk::Frame.new( "Display Suite" )
frame4.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame4.add( vbox4 )

frame5 = Gtk::Frame.new( "Context" )
frame5.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame5.add( vbox5 )


frame6 = Gtk::Frame.new( "Utils" )
frame6.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame6.add( vbox6 )

frame7 = Gtk::Frame.new( "More Utils" )
frame7.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame7.add( vbox7 )

frame8 = Gtk::Frame.new( "Entity" )
frame8.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame8.add( vbox8 )

frame9 = Gtk::Frame.new( "Rabbit Hole" )
frame9.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame9.add( vbox9 )

frame10 = Gtk::Frame.new( "Motley" )
frame10.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame10.add( vbox10 )
        
frame11 = Gtk::Frame.new( "Migrate" )
frame11.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame11.add( vbox11 )
        
frame12 = Gtk::Frame.new( "Webform" )
frame12.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame12.add( vbox12 )
        
frame13 = Gtk::Frame.new( "Date" )
frame13.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame13.add( vbox13 )
        
frame14 = Gtk::Frame.new( "References" )
frame14.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame14.add( vbox14 )
        
frame15 = Gtk::Frame.new( "Views" )
frame15.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame15.add( vbox15 )
        
frame16 = Gtk::Frame.new( "User" )
frame16.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame16.add( vbox16 )
        
frame17 = Gtk::Frame.new( "Views 2" )
frame17.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame17.add( vbox17 )
        
frame18 = Gtk::Frame.new( "Admin" )
frame18.set_shadow_type( Gtk::SHADOW_ETCHED_OUT )
frame18.add( vbox18 )


box3.add( frame2 )
box3.add( frame3 )
box2.add( box3 )
box4.add( frame4 )
box4.add( frame9 )
box2.add( box4 )




box2.add( frame5 )
box2.add( frame6 )
box2.add( frame7 )
box2.add( frame8 )
box2.add( frame10 )
box2.add( frame11 )
box2.add( frame12 )
box2.add( frame13 )
box2.add( frame14 )
box2.add( frame16 )
box2.add( frame15 )
box2.add( frame17 )
box2.add( frame18 )


box.add(frame1)
box.add(box2)

window.add(box)
window.show_all
Gtk::Statusbar.new()
Gtk.main