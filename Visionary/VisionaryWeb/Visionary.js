var storyContent = ﻿{"inkVersion":19,"root":[[{"#":"title: Visionary"},{"#":"author: by Pablo E. Paredes"},{"->":"System_check_for_visit"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"System_check_for_visit":[[["ev",{"^->":"System_check_for_visit.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^First visit",{"->":"$r","var":true},null]}],["ev",{"^->":"System_check_for_visit.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Second visit",{"->":"$r","var":true},null]}],["ev",{"^->":"System_check_for_visit.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Third visit",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"System_check_for_visit.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":"First_visit"},{"#f":5}],"c-1":["ev",{"^->":"System_check_for_visit.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n",{"->":"Second_visit"},{"#f":5}],"c-2":["ev",{"^->":"System_check_for_visit.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":"Third_visit"},{"#f":5}]}],{"#f":1}],"First_visit":[[{"#":"IMAGE: Visionary_start.png"},"ev",{"VAR?":"userName"},"out","/ev","^, my name is Visionary. I can teach you techniques to face your fears and help you find relief from them.","\n","^To make this technique work, you must first raise your stress by \"imagining\" your stressor, then learn how to control it by breathing.","\n","^The idea is to help you \"habituate\" to a stressful situation. This doesn't mean the issue will disappear, but you can be more effective in dealing with it, and have tools at hand to manage it if it comes back.","\n","^I know it sounds a bit counter-intuitive, but it can really work if you commit to do it well. Are you ready to do it?","\n",["ev",{"^->":"First_visit.0.13.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Ok! let's start",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.0.14.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Already very stressed",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.13.s"},[{"#n":"$r2"}],"\n","^Remember - we will start slow, aiming for imagining just enough details to just raise your stress above your current level.","\n","ev",3,"/ev",{"VAR=":"vividThreshold","re":true},{"->":".^.^.^.Imagery"},{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"First_visit.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.14.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Ok. Take a minute to recount or imagine the possible consequences of this stressful situation with as enough detail. Let me know when you are done.","\n",["ev",{"^->":"First_visit.0.g-0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-2":["ev",{"^->":"First_visit.0.g-0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^How vividly did you imagine this situation? - Use 0 for not vivid at all, and 10 for extremely vivid","\n","ev",3,"/ev",{"VAR=":"vividThreshold","re":true},{"->":".^.^.^.VividSelector"},{"#f":5}]}],{"Imagery":[["^Close your eyes, imagine ",["ev","visit",1,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^a negative",{"->":".^.^.17"},null],"s1":["pop","^the worst possible",{"->":".^.^.17"},null],"#f":5}],"^ event that could happen related to \"","ev",{"VAR?":"stressor"},"out","/ev","^\" for 10 to 30 seconds, and let me know when Done.","\n",["ev",{"^->":"First_visit.Imagery.0.9.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.Imagery.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.9.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.^.VividSelector"},{"#f":5}]}],{"#f":1}],"VividSelector":[["^How vividly did you imagine your fear, 0 meaning \"not vivid at all\" and 10 meaning \"extremely vivid\"? ","\n",["ev",{"^->":"First_visit.VividSelector.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^0",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^1",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^2",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^3",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^4",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":2},{"s":["^5",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.8.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-6","flg":2},{"s":["^6",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.9.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-7","flg":2},{"s":["^7",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.10.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-8","flg":2},{"s":["^8",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.11.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-9","flg":2},{"s":["^9",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.VividSelector.0.12.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-10","flg":2},{"s":["^10",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.VividSelector.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","ev",0,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"First_visit.VividSelector.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","ev",1,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"First_visit.VividSelector.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","ev",2,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-3":["ev",{"^->":"First_visit.VividSelector.0.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","ev",3,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-4":["ev",{"^->":"First_visit.VividSelector.0.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","ev",4,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-5":["ev",{"^->":"First_visit.VividSelector.0.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"\n","ev",5,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-6":["ev",{"^->":"First_visit.VividSelector.0.c-6.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.8.s"},[{"#n":"$r2"}],"\n","ev",6,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-7":["ev",{"^->":"First_visit.VividSelector.0.c-7.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.9.s"},[{"#n":"$r2"}],"\n","ev",7,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-8":["ev",{"^->":"First_visit.VividSelector.0.c-8.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.10.s"},[{"#n":"$r2"}],"\n","ev",8,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-9":["ev",{"^->":"First_visit.VividSelector.0.c-9.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.11.s"},[{"#n":"$r2"}],"\n","ev",9,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-10":["ev",{"^->":"First_visit.VividSelector.0.c-10.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.12.s"},[{"#n":"$r2"}],"\n","ev",10,"/ev",{"VAR=":"vividLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev",{"VAR?":"vividLevel"},{"VAR?":"vividThreshold"},"<","/ev",{"*":".^.c-11","flg":9},"ev",{"VAR?":"vividLevel"},{"VAR?":"vividThreshold"},">=","/ev",{"*":".^.c-12","flg":9},{"c-11":[{"->":".^.^.^.^.^.Low_vividness"},"\n",{"#f":5}],"c-12":[{"->":".^.^.^.^.^.Stress_evaluation"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"Low_vividness":[["^A more vivid image of the event will help you later learn how to manage the stress.","\n","^Let's aim to raise it a bit more so you can later master your ability to deal with your fear related to: \"","ev",{"VAR?":"stressor"},"out","/ev","^\"","\n","^Do you want to spend some time imagining the event with more detail?","\n",["ev",{"^->":"First_visit.Low_vividness.0.11.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Sure",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.Low_vividness.0.12.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^No, Next step",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.Low_vividness.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.11.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.^.vividAgain"},{"#f":5}],"c-1":["ev",{"^->":"First_visit.Low_vividness.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.12.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.^.Stress_evaluation"},{"#f":5}]}],{"#f":1}],"vividAgain":[["^Ok. Try to pay attention to details such as where it will be, who will be there, at what time, what happened before the even, etc...","\n","^Let me know when you are done.","\n",[["ev",{"^->":"First_visit.vividAgain.0.g-0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.vividAgain.0.g-0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.^.^.VividSelector"},{"#f":5}],"#f":5,"#n":"g-0"}],null],{"#f":1}],"Stress_evaluation":["^As you pictured the issue, how stressed were you feeling? Zero means not stressed at all and 10 means extremely stressed.","\n",{"->":".^.^.StressSelector"},{"#f":1}],"StressSelector":[[["ev",{"^->":"First_visit.StressSelector.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^0",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^1",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^2",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^3",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^4",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":2},{"s":["^5",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-6","flg":2},{"s":["^6",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-7","flg":2},{"s":["^7",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.8.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-8","flg":2},{"s":["^8",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.9.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-9","flg":2},{"s":["^9",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.StressSelector.0.10.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-10","flg":2},{"s":["^10",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.StressSelector.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","ev",0,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"First_visit.StressSelector.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n","ev",1,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"First_visit.StressSelector.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","ev",2,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-3":["ev",{"^->":"First_visit.StressSelector.0.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","ev",3,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-4":["ev",{"^->":"First_visit.StressSelector.0.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","ev",4,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-5":["ev",{"^->":"First_visit.StressSelector.0.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","ev",5,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-6":["ev",{"^->":"First_visit.StressSelector.0.c-6.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","ev",6,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-7":["ev",{"^->":"First_visit.StressSelector.0.c-7.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"\n","ev",7,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-8":["ev",{"^->":"First_visit.StressSelector.0.c-8.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.8.s"},[{"#n":"$r2"}],"\n","ev",8,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-9":["ev",{"^->":"First_visit.StressSelector.0.c-9.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.9.s"},[{"#n":"$r2"}],"\n","ev",9,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-10":["ev",{"^->":"First_visit.StressSelector.0.c-10.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.10.s"},[{"#n":"$r2"}],"\n","ev",10,"/ev",{"VAR=":"stressLevel","re":true},{"->":".^.^.g-0"},{"#f":5}],"g-0":["ev",{"VAR?":"stressLevel"},2,"<=","/ev",{"*":".^.c-11","flg":9},"ev",{"VAR?":"stressLevel"},2,">","/ev",{"*":".^.c-12","flg":9},{"c-11":[{"->":".^.^.^.^.^.Low_stress"},"\n",{"#f":5}],"c-12":[{"->":".^.^.^.^.^.High_stress"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"Low_stress":[["^The more vividly you are experiencing your fear, the more helpful this exercise can be.","\n","^Remember that raising your stress a little, and later learning to control it and relax helps you \"habituate\" with the stressful situation, and ultimately control your fear.","\n","^If you don’t find the image stressful enough, consider other images until you find one that raises your stress a bit more.","\n",["ev",{"^->":"First_visit.Low_stress.0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Repeat",{"->":"$r","var":true},null]}],["ev",{"^->":"First_visit.Low_stress.0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Next step",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.Low_stress.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","^Alright, let's make an effort to first raise your level of stress, so later we can learn to control it.","\n",{"->":".^.^.^.^.Imagery"},{"#f":5}],"c-1":["ev",{"^->":"First_visit.Low_stress.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.^.High_stress"},{"#f":5}]}],{"#f":1}],"High_stress":[["^Next, use all of your senses to really experience the image for a minute. It might feel a bit scary for a moment, but it will pass!","\n","^I will help you relax when you're done.","\n",["ev",{"^->":"First_visit.High_stress.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"First_visit.High_stress.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","^OK! Let's relax for a little bit.","\n",{"->":"Relaxation_technique"},{"#f":5}]}],{"#f":1}],"#f":1}],"Relaxation_technique":[["^Let’s take 5 deep breaths or more. You can follow the pace of the image here, or whatever works for you. Make yourself comfortable, sitting, or standing, whatever you like.&nbsp;","\n",["ev",{"^->":"Relaxation_technique.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Ok, done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Relaxation_technique.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^How are you feeling right now? ","\n",["ev",{"^->":"Relaxation_technique.0.g-0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Calmer",{"->":"$r","var":true},null]}],["ev",{"^->":"Relaxation_technique.0.g-0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^The same",{"->":"$r","var":true},null]}],["ev",{"^->":"Relaxation_technique.0.g-0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^More stressed",{"->":"$r","var":true},null]}],{"c-1":["ev",{"^->":"Relaxation_technique.0.g-0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop","^Great.",{"->":".^.^.23"},null],"s1":["pop","^Good.",{"->":".^.^.23"},null],"s2":["pop","^Ok",{"->":".^.^.23"},null],"#f":5}],"^  That's what we hope to have happen.","\n",{"->":"Final_Nugget"},{"->":".^.^.^.g-1"},{"#f":5}],"c-2":["ev",{"^->":"Relaxation_technique.0.g-0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-1"},{"#f":5}],"c-3":["ev",{"^->":"Relaxation_technique.0.g-0.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":[["ev",{"^->":"Relaxation_technique.0.g-1.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^first pass",{"->":"$r","var":true},null]}],["ev",{"^->":"Relaxation_technique.0.g-1.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":2},{"s":["^second pass",{"->":"$r","var":true},null]}],{"c-4":["ev",{"^->":"Relaxation_technique.0.g-1.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^Ok, let's do the relaxation technique again","\n",{"->":".^.^.^.^"},{"->":".^.^.^.g-2"},{"#f":5}],"c-5":["ev",{"^->":"Relaxation_technique.0.g-1.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-2"},{"#f":5}],"#f":5}],"g-2":["^Ok, we can stop here. Try to keep breathing slowly.","\n","^Do you want to try another relaxation technique guided by one of my friends?","\n",["ev",{"^->":"Relaxation_technique.0.g-2.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-6","flg":2},{"s":["^Yes, please",{"->":"$r","var":true},null]}],["ev",{"^->":"Relaxation_technique.0.g-2.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-7","flg":2},{"s":["^No, let's just finish",{"->":"$r","var":true},null]}],{"c-6":["ev",{"^->":"Relaxation_technique.0.g-2.c-6.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":"New_bot"},{"#f":5}],"c-7":["ev",{"^->":"Relaxation_technique.0.g-2.c-7.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","^Sorry it has not worked out today.","\n",{"->":"Final_Nugget"},{"#f":5}],"#f":5}]}],{"#f":1}],"New_bot":["^No problem. I will call a friend.","\n","^Just remember, I know it is hard to face our fears, but combining vivid imagery with some powerful relaxation could help in the future.","\n","end",{"#f":1}],"Final_Nugget":[{"#":"IMAGE: Visionary_end.png"},"^Imagery exercises can help reduce the upcoming stress by \"habituating\" to it if you are able to do them as vividly as possible.","\n","^Try to practice imagery exposure a couple of times a day, especially as a way to reduce the fear of a potentially future stressful situation.","\n","end",{"#f":1}],"Second_visit":[[["ev",{"^->":"Second_visit.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^positive/neutral",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^negative",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"#":"IMAGE: Visionary_start.png"},"^Great to see you again! Let's practice again making imagery as vivid as possible.","\n",{"->":".^.^.^.Guide"},{"#f":5}],"c-1":["ev",{"^->":"Second_visit.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n",{"#":"IMAGE: Visionary_start.png"},"^Perhaps last time it was not easy to imagine future fears vividly, or to control them afterwards.","\n",{"->":".^.^.^.Imagining"},{"#f":5}]}],{"Guide":[["^Do you want me to guide you, or do you feel you can do it by yourself?","\n",["ev",{"^->":"Second_visit.Guide.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Guide me",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.Guide.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^I can do it",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.Guide.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Of course!","\n",{"->":".^.^.^.^.positive_guide"},{"#f":5}],"c-1":["ev",{"^->":"Second_visit.Guide.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Sounds good.","\n",{"->":".^.^.^.^.positive_by_yourself"},{"#f":5}]}],{"#f":1}],"Imagining":[["^Do you want to try imagining your fears again?","\n",["ev",{"^->":"Second_visit.Imagining.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Ok ",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.Imagining.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^No, another technique",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.Imagining.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Alright.","\n","^Remember, the idea is to use mental imagery to first raise your stress, to then learn to relax, and ultimately conquer it.","\n",{"->":".^.^.^.^.pickLevel"},{"#f":5}],"c-1":["ev",{"^->":"Second_visit.Imagining.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n",{"->":"New_bot"},{"#f":5}]}],{"#f":1}],"pickLevel":[["^Do you want to try again the mild version of exposure we did last time, aim higher, or do you want me to ask guiding questions to help you raise your level of exposure?","\n",["ev",{"^->":"Second_visit.pickLevel.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Questions",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.pickLevel.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Mild vividness",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.pickLevel.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Higher vividness",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.pickLevel.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^OK, Let's do it.","\n",{"->":"Questions_for_vividness"},{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"Second_visit.pickLevel.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Sure thing","\n","ev",3,"/ev",{"VAR=":"vividThreshold","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"Second_visit.pickLevel.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","^Sure thing","\n","ev",5,"/ev",{"VAR=":"vividThreshold","re":true},{"->":".^.^.g-0"},{"#f":5}],"g-0":[{"->":"First_visit.Imagery"},{"#f":5}]}],{"#f":1}],"positive_guide":[["^Do you want to use the simple version you learned, but this time aiming at a higher level of vividness, or do you want me to ask you guiding questions that could help increase the vividness of the image?","\n",["ev",{"^->":"Second_visit.positive_guide.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Simple version",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.positive_guide.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Multiple questions",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.positive_guide.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Sure","\n","^This time we will aiming at imagining as many details as possible to raise your stress higher than in the past.","\n","ev",5,"/ev",{"VAR=":"vividThreshold","re":true},{"->":"First_visit.Imagery"},{"#f":5}],"c-1":["ev",{"^->":"Second_visit.positive_guide.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Certainly.","\n",{"->":"Questions_for_vividness"},{"#f":5}]}],{"#f":1}],"positive_by_yourself":[["^Take your time, and don't forget to imagine your event vividly and then breathe slowly for a few times.","\n","^Let me know when you are done.","\n",["ev",{"^->":"Second_visit.positive_by_yourself.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Second_visit.positive_by_yourself.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Did you get stressed before calming down?","\n",["ev",{"^->":"Second_visit.positive_by_yourself.0.g-0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Yes",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.positive_by_yourself.0.g-0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^No",{"->":"$r","var":true},null]}],{"c-1":["ev",{"^->":"Second_visit.positive_by_yourself.0.g-0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Great","\n",{"->":"Final_Nugget"},{"->":".^.^.^.g-1"},{"#f":5}],"c-2":["ev",{"^->":"Second_visit.positive_by_yourself.0.g-0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^Could I help you with some elements of the imagery technique?","\n",["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^Yes, vividness",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-4","flg":2},{"s":["^Yes, calming down",{"->":"$r","var":true},null]}],["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-5","flg":2},{"s":["^It's OK",{"->":"$r","var":true},null]}],{"c-3":["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Sure.","\n",{"->":".^.^.^.^.^.positive_guide"},{"#f":5}],"c-4":["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.c-4.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^OK","\n",{"->":"Relaxation_technique"},{"#f":5}],"c-5":["ev",{"^->":"Second_visit.positive_by_yourself.0.g-1.c-5.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","^Alright. I hope it worked at least a little bit.","\n",{"->":"Final_Nugget"},{"#f":5}],"#f":5}]}],{"#f":1}],"#f":1}],"Questions_for_vividness":[["^To increase the vividness of the image, I will ask you a few questions to guide your imagination. Answer them in your head and let me know when done.","\n","^1. Do you think just because you imagined this event, it might happen?","\n",["ev",{"^->":"Questions_for_vividness.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Questions_for_vividness.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^2. If this event were to happen, what would you do to handle it?","\n",["ev",{"^->":"Questions_for_vividness.0.g-0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Ok, done",{"->":"$r","var":true},null]}],{"c-1":["ev",{"^->":"Questions_for_vividness.0.g-0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^3. Are you possibly blowing out of proportion the meaning of this imagined event?","\n",["ev",{"^->":"Questions_for_vividness.0.g-1.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-2":["ev",{"^->":"Questions_for_vividness.0.g-1.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":".^.^.^.g-2"},{"#f":5}],"#f":5}],"g-2":["^4. Based on what you know so far, how likely is this imagined event to happen?","\n",["ev",{"^->":"Questions_for_vividness.0.g-2.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-3","flg":2},{"s":["^Done",{"->":"$r","var":true},null]}],{"c-3":["ev",{"^->":"Questions_for_vividness.0.g-2.c-3.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n",{"->":"First_visit.Stress_evaluation"},{"#f":5}],"#f":5}]}],{"#f":1}],"Third_visit":[[["ev",{"^->":"Third_visit.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^positive/neutral",{"->":"$r","var":true},null]}],["ev",{"^->":"Third_visit.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^negative",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Third_visit.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",{"#":"IMAGE: Visionary_start.png"},"^Glad to see you again! You are getting quite good at imagining, habituating to, and ultimately defeating your fears!","\n","ev",6,"/ev",{"VAR=":"vividThreshold","re":true},{"->":"Second_visit.Guide"},{"#f":5}],"c-1":["ev",{"^->":"Third_visit.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n",{"#":"IMAGE: Visionary_start.png"},"^Hmmm... I know last time was not optimal. Imagery exposure can be a powerful way to help habituate yourrself to stressful situations, but I agree that sometimes it can be hard to handle.","\n","^Do you want to aim for a low or high level of vividness?","\n",{"->":".^.^.^.pickLevel"},{"#f":5}]}],{"pickLevel":[["^Do you want to try again the mild version of exposure we did last time, aim higher, or do you want me to ask guiding questions to help you raise your level of exposure?","\n",["ev",{"^->":"Third_visit.pickLevel.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":2},{"s":["^Higher vividness",{"->":"$r","var":true},null]}],["ev",{"^->":"Third_visit.pickLevel.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":2},{"s":["^Mild vividness",{"->":"$r","var":true},null]}],["ev",{"^->":"Third_visit.pickLevel.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^Questions",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Third_visit.pickLevel.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Sure thing","\n","ev",7,"/ev",{"VAR=":"vividThreshold","re":true},{"->":"First_visit.Imagery"},{"#f":5}],"c-1":["ev",{"^->":"Third_visit.pickLevel.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Sure thing","\n","ev",3,"/ev",{"VAR=":"vividThreshold","re":true},{"->":"First_visit.Imagery"},{"#f":5}],"c-2":["ev",{"^->":"Third_visit.pickLevel.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n","^OK, Let's do it.","\n",{"->":"Questions_for_vividness"},{"#f":5}]}],{"#f":1}],"#f":1}],"global decl":["ev","str","^Pablo","/str",{"VAR=":"userName"},"str","^Not getting enough funding","/str",{"VAR=":"stressor"},"str","^5","/str",{"VAR=":"vividLevel"},"str","^5","/str",{"VAR=":"stressLevel"},3,{"VAR=":"vividThreshold"},"/ev","end",null],"#f":1}],"listDefs":{}};