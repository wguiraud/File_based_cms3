=> [32m#<Rack::Request:0x0000729336ec60a8[0m
 @env[32m=[0m
  {[31m[1;31m"[0m[31mrack.version[1;31m"[0m[31m[0m=>[[1;34m1[0m, [1;34m3[0m],
   [31m[1;31m"[0m[31mrack.input[1;31m"[0m[31m[0m=>[32m#<StringIO:0x0000729336ec6120[0m[32m>[0m,
   [31m[1;31m"[0m[31mrack.errors[1;31m"[0m[31m[0m=>[32m#<StringIO:0x0000729336ec6198[0m[32m>[0m,
   [31m[1;31m"[0m[31mrack.multithread[1;31m"[0m[31m[0m=>[1;36mtrue[0m,
   [31m[1;31m"[0m[31mrack.multiprocess[1;31m"[0m[31m[0m=>[1;36mtrue[0m,
   [31m[1;31m"[0m[31mrack.run_once[1;31m"[0m[31m[0m=>[1;36mfalse[0m,
   [31m[1;31m"[0m[31mREQUEST_METHOD[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mPOST[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mSERVER_NAME[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mexample.org[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mSERVER_PORT[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m80[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mQUERY_STRING[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mPATH_INFO[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m/add_new_document[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.url_scheme[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mhttp[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mHTTPS[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31moff[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mSCRIPT_NAME[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mCONTENT_LENGTH[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m31[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.test[1;31m"[0m[31m[0m=>[1;36mtrue[0m,
   [31m[1;31m"[0m[31mREMOTE_ADDR[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m127.0.0.1[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mSERVER_PROTOCOL[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mHTTP/1.0[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mHTTP_VERSION[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mHTTP/1.0[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mHTTP_HOST[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mexample.org[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mCONTENT_TYPE[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mapplication/x-www-form-urlencoded[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mHTTP_COOKIE[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.tempfiles[1;31m"[0m[31m[0m=>[],
   [31m[1;31m"[0m[31mrack.request.form_hash[1;31m"[0m[31m[0m=>{[31m[1;31m"[0m[31mnew_document_name[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mhistory/txt[1;31m"[0m[31m[0m},
   [31m[1;31m"[0m[31mrack.request.form_vars[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mnew_document_name=history%2Ftxt[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.request.form_input[1;31m"[0m[31m[0m=>[32m#<StringIO:0x0000729336ec6120[0m[32m>[0m,
   [31m[1;31m"[0m[31mrack.logger[1;31m"[0m[31m[0m=>
    [32m#<Rack::NullLogger:0x000072933cc8ff40[0m
     @app[32m=[0m
      [32m#<Rack::Protection::EncryptedCookie:0x000072933700d2b8[0m
       @app[32m=[0m
        [32m#<Rack::Protection::FrameOptions:0x000072933cc611b8[0m
         @app[32m=[0m
          [32m#<Rack::Protection::HttpOrigin:0x000072933cc61578[0m
           @app[32m=[0m
            [32m#<Rack::Protection::IPSpoofing:0x000072933cc617d0[0m
             @app[32m=[0m
              [32m#<Rack::Protection::JsonCsrf:0x000072933cc61bb8[0m
               @app[32m=[0m
                [32m#<Rack::Protection::PathTraversal:0x000072933cc61fa0[0m
                 @app[32m=[0m
                  [32m#<Rack::Protection::RemoteToken:0x000072933cc62270[0m
                   @app[32m=[0m
                    [32m#<Rack::Protection::SessionHijacking:0x000072933cc62888[0m
                     @app[32m=[0m
                      [32m#<Rack::Protection::XSSHeader:0x000072933cc639b8[0m
                       @app[32m=[0m
                        [32m#<Sinatra::Application:0x0000729336f293b0[0m
                         @app[32m=[0m[1;36mnil[0m,
                         @current_engine[32m=[0m[33m:ruby[0m,
                         @default_layout[32m=[0m[33m:layout[0m,
                         @pinned_response[32m=[0m[1;36mnil[0m,
                         @preferred_extension[32m=[0m[1;36mnil[0m,
                         @template_cache[32m=[0m
                          [32m#<Sinatra::TemplateCache:0x0000729336f291f8[0m
                           @cache[32m=[0m
                            {[[33m:erb[0m,
                              [33m:index[0m,
                              {[33m:outvar[0m=>[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m, [33m:default_encoding[0m=>[31m[1;31m"[0m[31mutf-8[1;31m"[0m[31m[0m},
                              [31m[1;31m"[0m[31m/home/launchschool/RubymineProjects/File_based_cms3/views[1;31m"[0m[31m[0m]=>
                              [32m#<Tilt::ErubiTemplate:0x0000729336f4c630[0m
                               @compiled_method[32m=[0m
                                {[[1;34;4mSinatra[0m::[1;34;4mApplication[0m, [[33m:files[0m]]=>
                                  [32m#<UnboundMethod: Tilt::CompiledTemplates#__tilt_2580(locals) /home/launchschool/RubymineProjects/File_based_cms3/views/index.erb:-2>[0m},
                               @data[32m=[0m
                                [31m[1;31m"[0m[31m<!DOCTYPE html>[1;35m\n[0m[31m<html lang=[1;35m\"[0m[31men-US[1;35m\"[0m[31m >[1;35m\n[0m[31m<head>[1;35m\n[0m[31m  <title>File Based CMS</title>[1;35m\n[0m[31m  <meta charset=[1;35m\"[0m[31mUTF-8[1;35m\"[0m[31m>[1;35m\n[0m[31m  <link rel=[1;35m\"[0m[31mstylesheet[1;35m\"[0m[31m href=[1;35m\"[0m[31m/stylesheets/application.css[1;35m\"[0m[31m>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/jquery-3.7.1.min.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/application.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m</head>[1;35m\n[0m[31m<body>[1;35m\n[0m[31m<% if session[:message] %>[1;35m\n[0m[31m  <div id=[1;35m\"[0m[31merror[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p><%= session.delete(:message) %></p>[1;35m\n[0m[31m[1;35m\n[0m[31m    <script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m      setTimeout(function() {[1;35m\n[0m[31m        document.getElementById('error').style.display = 'none';[1;35m\n[0m[31m      }, 3000);[1;35m\n[0m[31m    </script>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m<% end %>[1;35m\n[0m[31m[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mmain[1;35m\"[0m[31m>[1;35m\n[0m[31m    <h1>File Based CMS</h1>[1;35m\n[0m[31m      <ul>[1;35m\n[0m[31m        <% files.each do |file| %>[1;35m\n[0m[31m          <div class=[1;35m\"[0m[31mfile_name[1;35m\"[0m[31m>[1;35m\n[0m[31m            <li>[1;35m\n[0m[31m              <a href=[1;35m\"[0m[31m/<%= file %>[1;35m\"[0m[31m><%= file %></a>[1;35m\n[0m[31m              <div class=[1;35m\"[0m[31mdestructive-action[1;35m\"[0m[31m>[1;35m\n[0m[31m                <a href=[1;35m\"[0m[31m/<%= file %>/edit[1;35m\"[0m[31m>Edit</a>[1;35m\n[0m[31m                <form class=[1;35m\"[0m[31mdelete[1;35m\"[0m[31m action=[1;35m\"[0m[31m/<%= file %>/delete[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m                  <button>Delete</button>[1;35m\n[0m[31m                </form>[1;35m\n[0m[31m              </div>[1;35m\n[0m[31m            </li>[1;35m\n[0m[31m          </div>[1;35m\n[0m[31m        <% end %>[1;35m\n[0m[31m      </ul>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mfooter[1;35m\"[0m[31m>[1;35m\n[0m[31m    <div id=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m>[1;35m\n[0m[31m      <a href=[1;35m\"[0m[31m/new_document[1;35m\"[0m[31m>New Document</a>[1;35m\n[0m[31m    </div>[1;35m\n[0m[31m[1;35m\n[0m[31m    <% if !session[:username] %>[1;35m\n[0m[31m      <div id=[1;35m\"[0m[31msignin[1;35m\"[0m[31m>[1;35m\n[0m[31m        <a href=[1;35m\"[0m[31m/users/signin[1;35m\"[0m[31m>Sign in</a>[1;35m\n[0m[31m      </div>[1;35m\n[0m[31m    <% end %>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m  <% if session[:username] %>[1;35m\n[0m[31m    <form class=[1;35m\"[0m[31msignedout[1;35m\"[0m[31m action=[1;35m\"[0m[31m/users/signout[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p>Signed in as: <%= session[:username] %></p>[1;35m\n[0m[31m      <button type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m>Sign out</button>[1;35m\n[0m[31m    </form>[1;35m\n[0m[31m  <% end %>[1;35m\n[0m[31m[1;35m\n[0m[31m[1;35m\n[0m[31m</body>[1;35m\n[0m[31m</html>[1;31m"[0m[31m[0m,
                               @default_encoding[32m=[0m[31m[1;31m"[0m[31mutf-8[1;31m"[0m[31m[0m,
                               @engine[32m=[0m
                                [32m#<Erubi::Engine:0x0000729336f4c5e0[0m
                                 @buffer_on_stack[32m=[0m[1;36mfalse[0m,
                                 @bufvar[32m=[0m[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m,
                                 @chain_appends[32m=[0m[1;36mnil[0m,
                                 @escape[32m=[0m[1;36mfalse[0m,
                                 @escapefunc[32m=[0m[31m[1;31m"[0m[31m::Erubi.h[1;31m"[0m[31m[0m,
                                 @filename[32m=[0m[1;36mnil[0m,
                                 @src[32m=[0m
                                  [31m[1;31m"[0m[31mbegin; __original_outvar = @_out_buf; @_out_buf = ::String.new; @_out_buf << '<!DOCTYPE html>[1;35m\n[0m[31m<html lang=[1;35m\"[0m[31men-US[1;35m\"[0m[31m >[1;35m\n[0m[31m<head>[1;35m\n[0m[31m  <title>File Based CMS</title>[1;35m\n[0m[31m  <meta charset=[1;35m\"[0m[31mUTF-8[1;35m\"[0m[31m>[1;35m\n[0m[31m  <link rel=[1;35m\"[0m[31mstylesheet[1;35m\"[0m[31m href=[1;35m\"[0m[31m/stylesheets/application.css[1;35m\"[0m[31m>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/jquery-3.7.1.min.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/application.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m</head>[1;35m\n[0m[31m<body>[1;35m\n[0m[31m'.freeze; if session[:message] [1;35m\n[0m[31m @_out_buf << '  <div id=[1;35m\"[0m[31merror[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p>'.freeze; @_out_buf << ( session.delete(:message) ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m[1;35m\n[0m[31m    <script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m      setTimeout(function() {[1;35m\n[0m[31m        document.getElementById([1;35m\\[0m[31m'error[1;35m\\[0m[31m').style.display = [1;35m\\[0m[31m'none[1;35m\\[0m[31m';[1;35m\n[0m[31m      }, 3000);[1;35m\n[0m[31m    </script>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m'.freeze; end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mmain[1;35m\"[0m[31m>[1;35m\n[0m[31m    <h1>File Based CMS</h1>[1;35m\n[0m[31m      <ul>[1;35m\n[0m[31m'.freeze;         files.each do |file| [1;35m\n[0m[31m @_out_buf << '          <div class=[1;35m\"[0m[31mfile_name[1;35m\"[0m[31m>[1;35m\n[0m[31m            <li>[1;35m\n[0m[31m              <a href=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '[1;35m\"[0m[31m>'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '</a>[1;35m\n[0m[31m              <div class=[1;35m\"[0m[31mdestructive-action[1;35m\"[0m[31m>[1;35m\n[0m[31m                <a href=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '/edit[1;35m\"[0m[31m>Edit</a>[1;35m\n[0m[31m                <form class=[1;35m\"[0m[31mdelete[1;35m\"[0m[31m action=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '/delete[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m                  <button>Delete</button>[1;35m\n[0m[31m                </form>[1;35m\n[0m[31m              </div>[1;35m\n[0m[31m            </li>[1;35m\n[0m[31m          </div>[1;35m\n[0m[31m'.freeze;         end [1;35m\n[0m[31m @_out_buf << '      </ul>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mfooter[1;35m\"[0m[31m>[1;35m\n[0m[31m    <div id=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m>[1;35m\n[0m[31m      <a href=[1;35m\"[0m[31m/new_document[1;35m\"[0m[31m>New Document</a>[1;35m\n[0m[31m    </div>[1;35m\n[0m[31m[1;35m\n[0m[31m'.freeze;     if !session[:username] [1;35m\n[0m[31m @_out_buf << '      <div id=[1;35m\"[0m[31msignin[1;35m\"[0m[31m>[1;35m\n[0m[31m        <a href=[1;35m\"[0m[31m/users/signin[1;35m\"[0m[31m>Sign in</a>[1;35m\n[0m[31m      </div>[1;35m\n[0m[31m'.freeze;     end [1;35m\n[0m[31m @_out_buf << '  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m'.freeze;   if session[:username] [1;35m\n[0m[31m @_out_buf << '    <form class=[1;35m\"[0m[31msignedout[1;35m\"[0m[31m action=[1;35m\"[0m[31m/users/signout[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p>Signed in as: '.freeze; @_out_buf << ( session[:username] ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m      <button type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m>Sign out</button>[1;35m\n[0m[31m    </form>[1;35m\n[0m[31m'.freeze;   end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m[1;35m\n[0m[31m</body>[1;35m\n[0m[31m</html>'.freeze;[1;35m\n[0m[31m@_out_buf.to_s[1;35m\n[0m[31m; ensure[1;35m\n[0m[31m  @_out_buf = __original_outvar[1;35m\n[0m[31mend[1;35m\n[0m[31m[1;31m"[0m[31m[0m,
                                 @text_end[32m=[0m[31m[1;31m"[0m[31m'.freeze[1;31m"[0m[31m[0m[32m>[0m,
                               @file[32m=[0m[31m[1;31m"[0m[31m/home/launchschool/RubymineProjects/File_based_cms3/views/index.erb[1;31m"[0m[31m[0m,
                               @fixed_locals[32m=[0m[1;36mnil[0m,
                               @freeze_string_literals[32m=[0m[1;36mfalse[0m,
                               @line[32m=[0m[1;34m1[0m,
                               @options[32m=[0m
                                {[33m:outvar[0m=>[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m, [33m:preamble[0m=>[1;36mfalse[0m, [33m:postamble[0m=>[1;36mfalse[0m, [33m:ensure[0m=>[1;36mtrue[0m},
                               @outvar[32m=[0m[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m,
                               @scope_class[32m=[0m[1;36mnil[0m,
                               @skip_compiled_encoding_detection[32m=[0m[1;36mnil[0m,
                               @src[32m=[0m
                                [31m[1;31m"[0m[31mbegin; __original_outvar = @_out_buf; @_out_buf = ::String.new; @_out_buf << '<!DOCTYPE html>[1;35m\n[0m[31m<html lang=[1;35m\"[0m[31men-US[1;35m\"[0m[31m >[1;35m\n[0m[31m<head>[1;35m\n[0m[31m  <title>File Based CMS</title>[1;35m\n[0m[31m  <meta charset=[1;35m\"[0m[31mUTF-8[1;35m\"[0m[31m>[1;35m\n[0m[31m  <link rel=[1;35m\"[0m[31mstylesheet[1;35m\"[0m[31m href=[1;35m\"[0m[31m/stylesheets/application.css[1;35m\"[0m[31m>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/jquery-3.7.1.min.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m  <script src=[1;35m\"[0m[31m/javascripts/application.js[1;35m\"[0m[31m></script>[1;35m\n[0m[31m</head>[1;35m\n[0m[31m<body>[1;35m\n[0m[31m'.freeze; if session[:message] [1;35m\n[0m[31m @_out_buf << '  <div id=[1;35m\"[0m[31merror[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p>'.freeze; @_out_buf << ( session.delete(:message) ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m[1;35m\n[0m[31m    <script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m      setTimeout(function() {[1;35m\n[0m[31m        document.getElementById([1;35m\\[0m[31m'error[1;35m\\[0m[31m').style.display = [1;35m\\[0m[31m'none[1;35m\\[0m[31m';[1;35m\n[0m[31m      }, 3000);[1;35m\n[0m[31m    </script>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m'.freeze; end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mmain[1;35m\"[0m[31m>[1;35m\n[0m[31m    <h1>File Based CMS</h1>[1;35m\n[0m[31m      <ul>[1;35m\n[0m[31m'.freeze;         files.each do |file| [1;35m\n[0m[31m @_out_buf << '          <div class=[1;35m\"[0m[31mfile_name[1;35m\"[0m[31m>[1;35m\n[0m[31m            <li>[1;35m\n[0m[31m              <a href=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '[1;35m\"[0m[31m>'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '</a>[1;35m\n[0m[31m              <div class=[1;35m\"[0m[31mdestructive-action[1;35m\"[0m[31m>[1;35m\n[0m[31m                <a href=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '/edit[1;35m\"[0m[31m>Edit</a>[1;35m\n[0m[31m                <form class=[1;35m\"[0m[31mdelete[1;35m\"[0m[31m action=[1;35m\"[0m[31m/'.freeze; @_out_buf << ( file ).to_s; @_out_buf << '/delete[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m                  <button>Delete</button>[1;35m\n[0m[31m                </form>[1;35m\n[0m[31m              </div>[1;35m\n[0m[31m            </li>[1;35m\n[0m[31m          </div>[1;35m\n[0m[31m'.freeze;         end [1;35m\n[0m[31m @_out_buf << '      </ul>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m  <div class=[1;35m\"[0m[31mfooter[1;35m\"[0m[31m>[1;35m\n[0m[31m    <div id=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m>[1;35m\n[0m[31m      <a href=[1;35m\"[0m[31m/new_document[1;35m\"[0m[31m>New Document</a>[1;35m\n[0m[31m    </div>[1;35m\n[0m[31m[1;35m\n[0m[31m'.freeze;     if !session[:username] [1;35m\n[0m[31m @_out_buf << '      <div id=[1;35m\"[0m[31msignin[1;35m\"[0m[31m>[1;35m\n[0m[31m        <a href=[1;35m\"[0m[31m/users/signin[1;35m\"[0m[31m>Sign in</a>[1;35m\n[0m[31m      </div>[1;35m\n[0m[31m'.freeze;     end [1;35m\n[0m[31m @_out_buf << '  </div>[1;35m\n[0m[31m[1;35m\n[0m[31m'.freeze;   if session[:username] [1;35m\n[0m[31m @_out_buf << '    <form class=[1;35m\"[0m[31msignedout[1;35m\"[0m[31m action=[1;35m\"[0m[31m/users/signout[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m      <p>Signed in as: '.freeze; @_out_buf << ( session[:username] ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m      <button type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m>Sign out</button>[1;35m\n[0m[31m    </form>[1;35m\n[0m[31m'.freeze;   end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m[1;35m\n[0m[31m</body>[1;35m\n[0m[31m</html>'.freeze;[1;35m\n[0m[31m@_out_buf.to_s[1;35m\n[0m[31m; ensure[1;35m\n[0m[31m  @_out_buf = __original_outvar[1;35m\n[0m[31mend[1;35m\n[0m[31m[1;31m"[0m[31m[0m[32m>[0m,
                             [[33m:erb[0m,
                              [33m:new_document[0m,
                              {[33m:outvar[0m=>[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m, [33m:default_encoding[0m=>[31m[1;31m"[0m[31mutf-8[1;31m"[0m[31m[0m},
                              [31m[1;31m"[0m[31m/home/launchschool/RubymineProjects/File_based_cms3/views[1;31m"[0m[31m[0m]=>
                              [32m#<Tilt::ErubiTemplate:0x0000729336fb4078[0m
                               @compiled_method[32m=[0m
                                {[[1;34;4mSinatra[0m::[1;34;4mApplication[0m, []]=>
                                  [32m#<UnboundMethod: Tilt::CompiledTemplates#__tilt_2580(locals) /home/launchschool/RubymineProjects/File_based_cms3/views/new_document.erb:-2>[0m},
                               @data[32m=[0m
                                [31m[1;31m"[0m[31m<% if session[:error] %>[1;35m\n[0m[31m  <div id=[1;35m\"[0m[31merror-message[1;35m\"[0m[31m>[1;35m\n[0m[31m    <p><%= session.delete(:error) %></p>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m<% end %>[1;35m\n[0m[31m[1;35m\n[0m[31m<script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m    setTimeout(function() {[1;35m\n[0m[31m        document.getElementById('error-message').style.display = 'none';[1;35m\n[0m[31m    }, 4500); // 3000 milliseconds = 3 seconds[1;35m\n[0m[31m</script>[1;35m\n[0m[31m[1;35m\n[0m[31m<form class=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m action=[1;35m\"[0m[31m/add_new_document[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m  <label for=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m>Add a new document</label>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31mtext[1;35m\"[0m[31m name=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m id=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m placeholder=[1;35m\"[0m[31mnew document name[1;35m\"[0m[31m>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m value=[1;35m\"[0m[31mCreate Document[1;35m\"[0m[31m>[1;35m\n[0m[31m</form>[1;35m\n[0m[31m[1;31m"[0m[31m[0m,
                               @default_encoding[32m=[0m[31m[1;31m"[0m[31mutf-8[1;31m"[0m[31m[0m,
                               @engine[32m=[0m
                                [32m#<Erubi::Engine:0x0000729337033cb0[0m
                                 @buffer_on_stack[32m=[0m[1;36mfalse[0m,
                                 @bufvar[32m=[0m[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m,
                                 @chain_appends[32m=[0m[1;36mnil[0m,
                                 @escape[32m=[0m[1;36mfalse[0m,
                                 @escapefunc[32m=[0m[31m[1;31m"[0m[31m::Erubi.h[1;31m"[0m[31m[0m,
                                 @filename[32m=[0m[1;36mnil[0m,
                                 @src[32m=[0m
                                  [31m[1;31m"[0m[31mbegin; __original_outvar = @_out_buf; @_out_buf = ::String.new; if session[:error] [1;35m\n[0m[31m @_out_buf << '  <div id=[1;35m\"[0m[31merror-message[1;35m\"[0m[31m>[1;35m\n[0m[31m    <p>'.freeze; @_out_buf << ( session.delete(:error) ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m'.freeze; end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m<script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m    setTimeout(function() {[1;35m\n[0m[31m        document.getElementById([1;35m\\[0m[31m'error-message[1;35m\\[0m[31m').style.display = [1;35m\\[0m[31m'none[1;35m\\[0m[31m';[1;35m\n[0m[31m    }, 4500); // 3000 milliseconds = 3 seconds[1;35m\n[0m[31m</script>[1;35m\n[0m[31m[1;35m\n[0m[31m<form class=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m action=[1;35m\"[0m[31m/add_new_document[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m  <label for=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m>Add a new document</label>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31mtext[1;35m\"[0m[31m name=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m id=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m placeholder=[1;35m\"[0m[31mnew document name[1;35m\"[0m[31m>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m value=[1;35m\"[0m[31mCreate Document[1;35m\"[0m[31m>[1;35m\n[0m[31m</form>[1;35m\n[0m[31m'.freeze;[1;35m\n[0m[31m@_out_buf.to_s[1;35m\n[0m[31m; ensure[1;35m\n[0m[31m  @_out_buf = __original_outvar[1;35m\n[0m[31mend[1;35m\n[0m[31m[1;31m"[0m[31m[0m,
                                 @text_end[32m=[0m[31m[1;31m"[0m[31m'.freeze[1;31m"[0m[31m[0m[32m>[0m,
                               @file[32m=[0m
                                [31m[1;31m"[0m[31m/home/launchschool/RubymineProjects/File_based_cms3/views/new_document.erb[1;31m"[0m[31m[0m,
                               @fixed_locals[32m=[0m[1;36mnil[0m,
                               @freeze_string_literals[32m=[0m[1;36mfalse[0m,
                               @line[32m=[0m[1;34m1[0m,
                               @options[32m=[0m
                                {[33m:outvar[0m=>[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m, [33m:preamble[0m=>[1;36mfalse[0m, [33m:postamble[0m=>[1;36mfalse[0m, [33m:ensure[0m=>[1;36mtrue[0m},
                               @outvar[32m=[0m[31m[1;31m"[0m[31m@_out_buf[1;31m"[0m[31m[0m,
                               @scope_class[32m=[0m[1;36mnil[0m,
                               @skip_compiled_encoding_detection[32m=[0m[1;36mnil[0m,
                               @src[32m=[0m
                                [31m[1;31m"[0m[31mbegin; __original_outvar = @_out_buf; @_out_buf = ::String.new; if session[:error] [1;35m\n[0m[31m @_out_buf << '  <div id=[1;35m\"[0m[31merror-message[1;35m\"[0m[31m>[1;35m\n[0m[31m    <p>'.freeze; @_out_buf << ( session.delete(:error) ).to_s; @_out_buf << '</p>[1;35m\n[0m[31m  </div>[1;35m\n[0m[31m'.freeze; end [1;35m\n[0m[31m @_out_buf << '[1;35m\n[0m[31m<script type=[1;35m\"[0m[31mtext/javascript[1;35m\"[0m[31m>[1;35m\n[0m[31m    setTimeout(function() {[1;35m\n[0m[31m        document.getElementById([1;35m\\[0m[31m'error-message[1;35m\\[0m[31m').style.display = [1;35m\\[0m[31m'none[1;35m\\[0m[31m';[1;35m\n[0m[31m    }, 4500); // 3000 milliseconds = 3 seconds[1;35m\n[0m[31m</script>[1;35m\n[0m[31m[1;35m\n[0m[31m<form class=[1;35m\"[0m[31mnew_document[1;35m\"[0m[31m action=[1;35m\"[0m[31m/add_new_document[1;35m\"[0m[31m method=[1;35m\"[0m[31mpost[1;35m\"[0m[31m>[1;35m\n[0m[31m  <label for=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m>Add a new document</label>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31mtext[1;35m\"[0m[31m name=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m id=[1;35m\"[0m[31mnew_document_name[1;35m\"[0m[31m placeholder=[1;35m\"[0m[31mnew document name[1;35m\"[0m[31m>[1;35m\n[0m[31m  <input type=[1;35m\"[0m[31msubmit[1;35m\"[0m[31m value=[1;35m\"[0m[31mCreate Document[1;35m\"[0m[31m>[1;35m\n[0m[31m</form>[1;35m\n[0m[31m'.freeze;[1;35m\n[0m[31m@_out_buf.to_s[1;35m\n[0m[31m; ensure[1;35m\n[0m[31m  @_out_buf = __original_outvar[1;35m\n[0m[31mend[1;35m\n[0m[31m[1;31m"[0m[31m[0m[32m>[0m}[32m>[0m[32m>[0m,
                       @options[32m=[0m
                        {[33m:reaction[0m=>[33m:drop_session[0m,
                         [33m:logging[0m=>[1;36mtrue[0m,
                         [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
                         [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
                         [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
                         [33m:status[0m=>[1;34m403[0m,
                         [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
                         [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
                         [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
                         [33m:xss_mode[0m=>[33m:block[0m,
                         [33m:nosniff[0m=>[1;36mtrue[0m,
                         [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
                         [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
                         [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
                     @options[32m=[0m
                      {[33m:reaction[0m=>[33m:drop_session[0m,
                       [33m:logging[0m=>[1;36mtrue[0m,
                       [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
                       [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
                       [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
                       [33m:status[0m=>[1;34m403[0m,
                       [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
                       [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
                       [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
                       [33m:tracking_key[0m=>[33m:tracking[0m,
                       [33m:track[0m=>[[31m[1;31m"[0m[31mHTTP_USER_AGENT[1;31m"[0m[31m[0m],
                       [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
                       [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
                       [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
                   @options[32m=[0m
                    {[33m:reaction[0m=>[33m:drop_session[0m,
                     [33m:logging[0m=>[1;36mtrue[0m,
                     [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
                     [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
                     [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
                     [33m:status[0m=>[1;34m403[0m,
                     [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
                     [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
                     [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
                     [33m:authenticity_param[0m=>[31m[1;31m"[0m[31mauthenticity_token[1;31m"[0m[31m[0m,
                     [33m:key[0m=>[33m:csrf[0m,
                     [33m:allow_if[0m=>[1;36mnil[0m,
                     [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
                     [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
                     [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
                 @options[32m=[0m
                  {[33m:reaction[0m=>[33m:drop_session[0m,
                   [33m:logging[0m=>[1;36mtrue[0m,
                   [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
                   [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
                   [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
                   [33m:status[0m=>[1;34m403[0m,
                   [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
                   [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
                   [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
                   [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
                   [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
                   [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
               @options[32m=[0m
                {[33m:reaction[0m=>[33m:drop_session[0m,
                 [33m:logging[0m=>[1;36mtrue[0m,
                 [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
                 [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
                 [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
                 [33m:status[0m=>[1;34m403[0m,
                 [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
                 [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
                 [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
                 [33m:allow_if[0m=>[1;36mnil[0m,
                 [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
                 [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
                 [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
             @options[32m=[0m
              {[33m:reaction[0m=>[33m:drop_session[0m,
               [33m:logging[0m=>[1;36mtrue[0m,
               [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
               [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
               [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
               [33m:status[0m=>[1;34m403[0m,
               [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
               [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
               [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
               [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
               [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
               [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
           @options[32m=[0m
            {[33m:reaction[0m=>[33m:drop_session[0m,
             [33m:logging[0m=>[1;36mtrue[0m,
             [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
             [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
             [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
             [33m:status[0m=>[1;34m403[0m,
             [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
             [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
             [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
             [33m:allow_if[0m=>[1;36mnil[0m,
             [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
             [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
             [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
         @frame_options[32m=[0m[31m[1;31m"[0m[31mSAMEORIGIN[1;31m"[0m[31m[0m,
         @options[32m=[0m
          {[33m:reaction[0m=>[33m:drop_session[0m,
           [33m:logging[0m=>[1;36mtrue[0m,
           [33m:message[0m=>[31m[1;31m"[0m[31mForbidden[1;31m"[0m[31m[0m,
           [33m:encryptor[0m=>[1;34;4mDigest[0m::[1;34;4mSHA1[0m,
           [33m:session_key[0m=>[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
           [33m:status[0m=>[1;34m403[0m,
           [33m:allow_empty_referrer[0m=>[1;36mtrue[0m,
           [33m:report_key[0m=>[31m[1;31m"[0m[31mprotection.failed[1;31m"[0m[31m[0m,
           [33m:html_types[0m=>[[31m[1;31m"[0m[31mtext/html[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xhtml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtext/xml[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mapplication/xml[1;31m"[0m[31m[0m],
           [33m:frame_options[0m=>[33m:sameorigin[0m,
           [33m:img_src[0m=>[31m[1;31m"[0m[31m'self' data:[1;31m"[0m[31m[0m,
           [33m:font_src[0m=>[31m[1;31m"[0m[31m'self'[1;31m"[0m[31m[0m,
           [33m:without_session[0m=>[1;36mfalse[0m}[32m>[0m,
       @coder[32m=[0m[32m#<Rack::Protection::EncryptedCookie::Marshal:0x000072933cc602b8[0m[32m>[0m,
       @cookie_only[32m=[0m[1;36mtrue[0m,
       @default_options[32m=[0m
        {[33m:path[0m=>[31m[1;31m"[0m[31m/[1;31m"[0m[31m[0m,
         [33m:domain[0m=>[1;36mnil[0m,
         [33m:expire_after[0m=>[1;36mnil[0m,
         [33m:secure[0m=>[1;36mfalse[0m,
         [33m:httponly[0m=>[1;36mtrue[0m,
         [33m:defer[0m=>[1;36mfalse[0m,
         [33m:renew[0m=>[1;36mfalse[0m,
         [33m:sidbits[0m=>[1;34m128[0m,
         [33m:secure_random[0m=>[1;34;4mSecureRandom[0m,
         [33m:secret[0m=>
          [31m[1;31m"[0m[31m3dd6abdf3a72c98b9c7316faedc475b671b43026d3b92778122cbebcd6f3dd25d5a739be99731e4827c631bf9aef146657800be2ceb27f9f24bd9f5a24f11856[1;31m"[0m[31m[0m,
         [33m:coder[0m=>[32m#<Rack::Protection::EncryptedCookie::Marshal:0x000072933cc602b8[0m[32m>[0m},
       @key[32m=[0m[31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m,
       @legacy_hmac[32m=[0m[1;36mfalse[0m,
       @same_site[32m=[0m[1;36mnil[0m,
       @secrets[32m=[0m
        [[31m[1;31m"[0m[31m=[1;35m\xD6[0m[31m[1;35m\xAB[0m[31m[1;35m\xDF[0m[31m:r[1;35m\xC9[0m[31m[1;35m\x8B[0m[31m[1;35m\x9C[0m[31ms[1;35m\x16[0m[31m[1;35m\xFA[0m[31m[1;35m\xED[0m[31m[1;35m\xC4[0m[31mu[1;35m\xB6[0m[31mq[1;35m\xB4[0m[31m0&[1;35m\xD3[0m[31m[1;35m\xB9[0m[31m'x[1;35m\x12[0m[31m,[1;35m\xBE[0m[31m[1;35m\xBC[0m[31m[1;35m\xD6[0m[31m[1;35m\xF3[0m[31m[1;35m\xDD[0m[31m%[1;35m\xD5[0m[31m[1;35m\xA7[0m[31m9[1;35m\xBE[0m[31m[1;35m\x99[0m[31ms[1;35m\x1E[0m[31mH'[1;35m\xC6[0m[31m1[1;35m\xBF[0m[31m[1;35m\x9A[0m[31m[1;35m\xEF[0m[31m[1;35m\x14[0m[31mfW[1;35m\x80[0m[31m[1;35m\v[0m[31m[1;35m\xE2[0m[31m[1;35m\xCE[0m[31m[1;35m\xB2[0m[31m[1;35m\x7F[0m[31m[1;35m\x9F[0m[31m$[1;35m\xBD[0m[31m[1;35m\x9F[0m[31mZ$[1;35m\xF1[0m[31m[1;35m\x18[0m[31mV[1;31m"[0m[31m[0m],
       @sid_length[32m=[0m[1;34m32[0m,
       @sid_secure[32m=[0m[1;34;4mSecureRandom[0m,
       @sidbits[32m=[0m[1;34m128[0m[32m>[0m[32m>[0m,
   [31m[1;31m"[0m[31mrack.session[1;31m"[0m[31m[0m=>
    {[31m[1;31m"[0m[31msession_id[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m1631f11635274888e07835f67b21926b986acc01263fced88d9a19b8f8eb3460[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mcsrf[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mqx1VjMymZAb3X9hokz0xUWlPyrSk-A-Be7XWkjDKkAs=[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mtracking[1;31m"[0m[31m[0m=>{[31m[1;31m"[0m[31mHTTP_USER_AGENT[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m}},
   [31m[1;31m"[0m[31mrack.session.options[1;31m"[0m[31m[0m=>
    {[33m:path[0m=>[31m[1;31m"[0m[31m/[1;31m"[0m[31m[0m,
     [33m:domain[0m=>[1;36mnil[0m,
     [33m:expire_after[0m=>[1;36mnil[0m,
     [33m:secure[0m=>[1;36mfalse[0m,
     [33m:httponly[0m=>[1;36mtrue[0m,
     [33m:defer[0m=>[1;36mfalse[0m,
     [33m:renew[0m=>[1;36mfalse[0m,
     [33m:sidbits[0m=>[1;34m128[0m,
     [33m:secure_random[0m=>[1;34;4mSecureRandom[0m,
     [33m:secret[0m=>
      [31m[1;31m"[0m[31m3dd6abdf3a72c98b9c7316faedc475b671b43026d3b92778122cbebcd6f3dd25d5a739be99731e4827c631bf9aef146657800be2ceb27f9f24bd9f5a24f11856[1;31m"[0m[31m[0m,
     [33m:coder[0m=>[32m#<Rack::Protection::EncryptedCookie::Marshal:0x000072933cc602b8[0m[32m>[0m},
   [31m[1;31m"[0m[31mrack.request.cookie_hash[1;31m"[0m[31m[0m=>{},
   [31m[1;31m"[0m[31mrack.request.cookie_string[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.session.unpacked_cookie_data[1;31m"[0m[31m[0m=>
    {[31m[1;31m"[0m[31msession_id[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m1631f11635274888e07835f67b21926b986acc01263fced88d9a19b8f8eb3460[1;31m"[0m[31m[0m},
   [31m[1;31m"[0m[31mrack.request.query_string[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m,
   [31m[1;31m"[0m[31mrack.request.query_hash[1;31m"[0m[31m[0m=>{},
   [31m[1;31m"[0m[31msinatra.route[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31mPOST /add_new_document[1;31m"[0m[31m[0m},
 @params[32m=[0m[1;36mnil[0m[32m>[0m
