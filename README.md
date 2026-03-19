# NetLogo
NetLogo is a programmable modeling environment for simulating natural and social phenomena. 
It is a powerful yet easy-to-learn platform for agent-based modeling in both research and education.

##### NOTE: NetLogo is a special-purpose Domain Specific Language; hence, it can only be used within the NetLogo environment. It cannot be run in IDEs like VS Code. Below are guidelines on how to install NetLogo and run a project within it. 


## Installing Netlogo
1. On Google search "Netlogo download for [whatever os your laptop uses]"
   * Options are Linux, Mac, and Windows.
3. Input your information (First & Last name, Email, etc).
4. Click "Download 64-bit".
   * For Mac, choose whichever you have. 
---

## Running This Project In Netlogo
There are 2 ways to run this project. The easy way and the learning way.
### Easy
1. Dowload the zip file of this project.
2. Open the zip file and extract the items if you wish.
3. Click on the Netlogo Model file titled "Ethical or Unethical".
4. Click the setup button >> then click the go button.

### Learning
In this method there are two sections to running this project.
#### The Algorithm
1. Download the .nls file from github
2. Open Netlogo and open the source file using the below instructions
   * On Netlogo go to the "Code Tab"
   * Click on "Included Files >> Click on "Open Source File" choose the .nls file you downloaded.
   * Another tab will open with the downloaded source file.
   * An Error will occur on that Tab. Dismiss it. Another error would be on the top of your screen highlighted in yellow. Ignore it.
   * Cut the code from the current tab and paste it in the main "Code" tab. Delete the empty tab.

When you finish this go to the "Interface" tab to set the buttons, sliders, and plots to be used in this project. You will get an error when you try to switch tabs. Ignore it and click the "Interface" tab once more. Then follow the below instructions.

#### The Interface
1. Click on "Add Widget".
2. Create two buttons. Name one "setup" and the other "go". Check the forever button for "go" if it's not already checked.
3. Click on "Add Widget" once more.
4. Create 4 sliders with the below parameters
     * Global-Var: number-of-agents, Range: 0-100 (++1), Value: 50.
     * Global-Var: relative-cost, Range: -10-10 (++1), Value: 0.
     * Global-Var: diversity, Range: 0-50 (++1), Value: 25.
     * Global-Var: average-ethicality, Range: 0-100 (++1), Value: 50.
5. Click on "Add Widget" once more, and create a chooser:
     * Global-Var: turtle-shape, Choice: "person" "circle".
6. Create 3 plots through "Add Widget" once more.
   * Name: Ethical & Unethical Behavior. Add 2 pens: ethical(green) and unethical(red) and check "show legend".
     * <img width="508" height="283" alt="image" src="https://github.com/user-attachments/assets/9cee3f58-dba6-4c34-9e6e-2220304db364" />
   * Name: Average Ethicality. Add 1 pen: avg-ethicality (black) and check "show legend".
       * <img width="501" height="119" alt="image" src="https://github.com/user-attachments/assets/2326b54e-77c6-44b5-80e1-850339039bb7" />
   * Name: Average Score. Add 1 pen: avg-score (blue) and check the "show legend".
       * <img width="505" height="107" alt="image" src="https://github.com/user-attachments/assets/aa47f673-5407-4beb-bee9-5b8e835e5047" />
7. Click the setup button >> then click the go button.




  

