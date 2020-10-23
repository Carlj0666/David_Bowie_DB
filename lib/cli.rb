class CLI
  
  def start
    puts "The David Bowie DB is happening now, not tomorrow...".black.on_light_blue.bold
    sleep(2)
    puts "MMMMMMMMMMMMMMMMMMMMMWNNMMWXx;.,xNMMWNNMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMNOolOKkc.     ;xXXo:kNMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMWNKxl'  .,.          .,.  ,oOXWMMMMMMMMMMMMMMM
MMMMMMMMMMMWXxc'.                          .;o0WMMMMMMMMMMMM
MMMMMMMMMMWk'                                 .lXMMMMMMMMMMM
MMMMMMMMMWx.                                    cXMMMMMMMMMM
MMMMMMMMMX;                                     .kMMMMMMMMMM
MMMMMMMMMO.                                      oWMMMMMMMMM
MMMMMMMMM0'                                      dWMMMMMMMMM
MMMMMMMMMNc                                     'OMMMMMMMMMM
MMMMMMMMMMO.                                    oNMMMMMMMMMM
MMMMMMMMMMN:     'clllc:;'.          .;lc;.    .OMMMMMMMMMMM
MMMMMMMMMMWl   .dNMMMMMMNx.         'xNMMW0,   ,KMMMMMMMMMMM
MMMMMMMMMMWd.  oNMMMMMMWx.        .lKMMMMMMO.  ;XMMMMMMMMMMM
MMMMMMMMMMMx. '0MMMMMMWx.        ,kWMMMMMMMN:  :XMMMMMMMMMMM
MMMMMMMMMMMk. :XMMMMMWx.       .oXMMMMMMMMMWd  cNMMMMMMMMMMM
MMMMMMMMMMMk. lWMMMMWd.      ;oOWMMMMMMMMMMMk. cNMMMMMMMMMMM
MMMMMMMMMMMk. oWMMMNd.     .dXWWX0kONMMMMMMMO. lNMMMMMMMMMMM
MMMMMMMMW0l'..xMMMNd.     .:l:;,..c0WMMMMMMMK; .:xNMMMMMMMMM
MMMMMMMMO'.lk0NMMNo.            'xNMMMMMMMMMWKOx,.oNMMMMMMMM
MMMMMMMMd.;XMMMMNo.   .'.    .'lKMMM{(*)+MMMMMMWd.;XMMMMMMMM
MMMMMMMMk.,0MMMWOc:ox0XO,   ;ONWMMMMMMMMMMMMMMMWl cNMMMMMMMM
MMMMMMMM0'.kMMMMWWMMMMX:  .dNMMMMMMMMMMMMMMMMMMX:.oWMMMMMMMM
MMMMMMMMNl.,xk0WMMMMMNl .cKWMMMMMMMMMMMMMMMMKkkc.,0MMMMMMMMM
MMMMMMMMMNx:'..kMMMMNo.,kWMMMMMMMMMMMMMMMMMX; .;l0WMMMMMMMMM
MMMMMMMMMMMWO. :XMMWx;dXMMMMMMMMMMMMMMMMMMWo. oNMMMMMMMMMMMM
MMMMMMMMMMMWd.  lNWKxKWMMMMMMMMMMMMMMMMMMWx.  cNMMMMMMMMMMMM
MMMMMMMMMMM0,    cKNWMMMMMMMMMMMMMMMMMMMNd.   .kMMMMMMMMMMMM
MMMMMMMMMMK;      ,kNMMMMMMMMMMMMMMMMMW0:.     ,OWMMMMMMMMMM
MMMMMMMMMXo,;c;.   .;dKWMMMMMMMMMMMWXk:.    'c;'c0WMMMMMMMMM
MMMMMMMMMWNWWNl. 'l;  .;ldkO00OOkdl:'. .;;. ,0WNNNWMMMMMMMMM
MMMMMMMMMMMMWKdokxc.;xOdc;,,,,,,,;cokOl..cddokNMMMMMMMMMMMMM
MMMMMMMMMMMMMWXk:.;xNMMMMWWNXXNNNWMMMMW0c..l0NMMMMMMMMMMMMMM
MMMMMMMMMMNKxc,'ckNMMMMMMMMMMMMMMMMMMMMMW0o,.;oONWMMMMMMMMMM
MMMMMWXOdc;',ckXWMMMMMMMMMMMMMMMMMMMMMMMMMMNOo;',:okKNWMMMMM
NKOdc,. .:x0NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKkl. .':lxOKN
,.      '0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN:       .'
        .oXWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNk'         
         .,;:loxOKNWMMMMMMMMMMMMMMMMMMMMWX0kdlc;,.          
          ckxoc;;,,:xNMMMMMMMMMMMMMMMW0l;,,;:ldkd.          
          .xWMMWNKk,.oWMMMMMMMMMMMMMM0'.o0XWMMMK:           
           .lXMMMMMO,cXMMMMMMMMMMMMMWx'oNMMMMNk,            
             'o0NMMWNNWMMMMMMMMMMMMMMNXNMMWXx;.             
               .,lx0XNWMMMMMMMMMMMMMWWNKko:.                
                    .';:cllooooollcc;,..                    
                                                            
".light_blue.on_light_red
    puts "\n"
    sleep(3)
    API.get_albums
    puts "Hello, I'm the machine spirit of David Bowie come to share my albums with you."
    puts "\n"
    sleep(1)
    self.db_menu
  end
  
  def db_menu
    
    puts "Type 'records' for a list of my albums, or type 'exit' to quit.".black.on_light_blue.bold
    puts "\n".black.on_green
    
    user_entry = gets.strip.downcase
    
    if user_entry == "exit"
      puts "\n"
      sleep(1)
      puts '"If it works it\'s out of date"' "\n- David Bowie" 
      sleep(3)
      puts "                                                            
                     ..    ..''.                            
                  .cxk:   ;OXNNXk,   :xo,.                  
                ;xXWMK,  .kMMMMMMk.  ;XMN0l.                
              ,kNMMMMXc   :0WWWW0:   lNMMMWKl.              
              ;kNMMMMM0;   .,;;,.   :KMMMMWXd.              
                'lkXWMMNx;.      .:kNMMWKxc.                
                   .;lxOKK0OxxxxO0XKOdl,.                   
                        ..',;;;;,'..                        
                                                            
                                                            
                                                            
            .;.   ';.                 .;.  ,;.              
            ,0o. ;ONk' .:kxc...'lkx,  cKo .xKo.             
             ,:. .:c;.  .:'     .,:. .;c:. .:,              
                                                            
                                                            
".light_blue.on_light_red
      
    elsif user_entry != "records"
      
      puts '"I ask for so little. Let\'s start from the beginning."'
      puts "\n"
      sleep(2)
      db_menu
      
    else
      puts "\n"
      puts '"This chaos is killing me..."'
      sleep(3)
      puts "\n"
      puts "Select a number between 1 - 51 to access the corresponding album.".black.on_light_blue.bold
      sleep(5)
      puts "\n"
      show_list_of_albums
      
      user_record_selector
      
      db_menu
      
    end
  end
    
  def show_list_of_albums
    DB_Record.all.each.with_index(1) do |record, index|
    puts "#{index} - #{record.name}"
    end
  end
      
      
  def user_record_selector
    
    puts "Select a number between 1 - 51 to access the corresponding album.".black.on_light_blue.bold
    puts "\n"
    
    user_index_selection = gets.strip.downcase.to_i - 1 

    puts '"I\'ve been waiting for you, for such a long time now."'
    puts "\n"
    
    if !user_index_selection.between?(0, DB_Record.all.length - 1)
      user_record_selector
    
    else
      current_record_instance = DB_Record.all[user_index_selection]
      puts "You've chosen: #{current_record_instance.name}"
      puts"\n"
      record_detail_viewer(current_record_instance)
    end
  end
      
      
  def record_detail_viewer(current_record)
    puts "Artist: db \n Record Name: #{current_record.name} \n Genre: #{current_record.genre} \n Release Year: #{current_record.release_year} \n Label: #{current_record.label} \n Description: #{current_record.description}\n"
    puts "\n"
  end
  
end

