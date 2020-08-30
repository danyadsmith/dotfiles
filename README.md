# danyadsmith in dotfiles

This is me, in `dotfiles`.

My dotfiles grew untamed and unmanaged for the most part from 2014 to 2018.
Sometime in 2017, I started noticing `dotfiles` repositories on GitHub. It
seemed like an intriguing idea, a must-have if the worst happened.

I write this during a period when I’ve been working my way through various Vim
tutorials. I’ve spent a little time every week refining my `.vimrc` and making
my Vim customizations portable. I use Vim regularly on my personal computers, my
work laptop, and my iPad. For this reason, having a system that allows me to
easily manage and move customizations from one environment to another has been
essential. This encouraged me to finally take the plunge and create a `dotfiles`
repository. I’m starting simple.

My basic organizational structure is as follows:

    ·
    ├── git
    ├── system
    ├── vim
    └── README.md

I group like things into topical subfolders. 

Like my `.vimrc` and other Vim customizations, I expect this repository to grow
and evolve bit by bit over time. Every journey begins with a single step.

Configuration file headings are generated using `figlet` and the **fender** font:

    figlet -f fender .vimrc > header.txt
    
