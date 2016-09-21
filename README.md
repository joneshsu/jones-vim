# Jones's vim configuration #

## Intro ##
My personal vim configurations and plugins which I used in my daily job.

## Usage ##

### Manual installation ###

1. BACKUP your `.vim` directory and `.vimrc` first. (IMPORTANT!!!!)
2. cd `~` to change directory to your home directory.
3. copy files to your home directory:
   
      ``` 
        git clone git@github.com:joneshsu/jones-vim.git  
      ```
4. make a symbolic link `.vim` to `jones-vim` that you just cloned, or just rename it to `.vim` also be fine:

      ```
        ln -s jones-vim ~/.vim
      ```
5. link the vimrc to 

      ```
        ln -s .vim/vimrc ~/.vimrc
      ```
6. install plugins within vim mode

      ```
        :BundleInstall
      ```
7. install YouCompleteMe plugins with MacOS, please refer below

      ```
        1. brew install cmake
        2. brew install macvim
        3. alias vim='mvim -v' 
      ```
