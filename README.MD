# Dynamic Environment Variables for MacOS X Yosemite

The following is an excerpt from my Home Directory as to how I managed to modify my Mac
in such a way to allow any Mac app launched normally via the native launch system to have 
access to the same dynamically set variables I use in my Terminal's ```~/.profile``` script.

This was resolved after trying to make it so that [IntelliJ](https://www.jetbrains.com/idea) 
could see the standard envvars that i use from the terminal including my ```ANDROID_HOME```, 
```GOPATH``` and ```GOROOT```. Investigation and resolution of this problem  lead to the 
development of my [EnvVars](https://github.com/grmartin/EnvVars-Mac) app.

This is not a drop in solution, and will require Path changes to get working, but my hope 
is that it is largely self explanatory. 