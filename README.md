# tips
tips is a tip calculator application for iOS.
Submitted by: Kausik Venkat
Time spent: Over 35 hours

Hi, this is my simple tips calculator app. It lets you choose between 18%, 20% and 25% to calculate your total tip. It also can handle a multiple party size so if you have 3 people sharing a meal, it will calculate the bill amount for each person including the tip. I have also included a simple color mode scheme where the user can choose between light mode, dark mode and UIUC mode which a variant of blue and orange.

Note: I'm sorry I don't have a settings page. I had emailed you guys about it and got it fixed but literally 1 hour before submission the settings page broke and I was not able to finish it. Thus I had to put my optional features in the main view page itself. :/

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ ] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [x] Let's the user calculate tip per person if more than one person are dining. So if the total is $100 with 20% tip and there is a party size of 3, the total would show $40. i.e. ($100 + $20)/3
* [x] Color themes. User can select from the following color schemes: Light mode (white with black words), Dark mode (dark with white words) and UIUC mode (blue with orange words). 

## Video Walkthrough 
Here's a walkthrough of implemented user stories:

<img src='https://github.com/kausik93/tips/blob/master/tipCalculator.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes
* I struggled a lot with the navigation settings. Luckily, Timothy helped me out with this. But it broke literally at the last minute :( 
* I'm also not very good with Github. It took me 20 minutes to get my app onto Github. I still don't think I have a proper grasp of how * it works.
* I've also realized that because Swift is a relatively new language that has been changing every few years and that some stuff could be done both through the storyboard and through programming, finding solutions to the problems hasn't been as easy as I would have in Java or C. Over developing the app, I've learnt to partly ignore those from 2012 and beyond. Most of them just end up causing another error in my code. 
* Next time, I won't be as chaotic and I won't start this at the last hour so I will have a better app :/


## License

    Copyright [2016] [Kausik Venkat]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
