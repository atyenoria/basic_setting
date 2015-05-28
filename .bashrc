#project 
alias pro1='cd /Users/jima/work/pro1/' #rails tutorila
alias pro2='cd /Users/jima/work/pro2/' #node.js??
alias pro3='cd /Users/jima/work/pro3/' #ffserver
alias pro4='cd /Users/jima/work/pro4/' # rails api
alias pro5='cd /Users/jima/work/pro5/' # ansible sakura
alias pro6='cd /Users/jima/work/pro6/' # ansible sakura
alias work='cd /Users/jima/work' # work １
export HOGE2=111




#project template 
			#extracting source from github
			alias tmp1='gcls https://github.com/atyenoria/template_rails.git'
			alias tmp1c='s /Users/jima/work/template_rails' 

			alias tmp2='gcls https://github.com/atyenoria/template_vagrant.git'
			alias tmp2c='s /Users/jima/work/template_vagrant' 


#general shortcut
alias sor='source ~/.bash_profile'
alias myg='wget -q -O - ipcheck.mycurse.net'
alias c='cat'
alias v='vim'
alias ba='s ~/.bashrc'
alias bpΩ='s ~/.bash_profile'
alias sb='source ~/.bashrc'
alias l='ls -lah'
alias i='ifconfig'
alias ansi='ansible-playbook -i hosts --sudo'

alias sshcon='s ~/.ssh/config'
alias lso='lsof -i -n -P'
alias rf='rm -rf'
alias o='open .'
alias pk='pkill'
alias hj='html2jade'
alias jh='jade -P'
alias gc="s ~/.gitconfig"
alias bl="bundle list"
alias ki="kill -9"
alias cp="cp -R"
alias z="cd -"
alias q="cd .."
alias a="cd"
alias d="cd ~/Desktop"
alias f="nf start"
alias to="touch"
alias psg="ps -ef | grep"
alias jl="jobs -l"


#shellscript
alias shellc="cd /Users/jima/myshell"
alias shell="s /Users/jima/myshell"
alias shellx="chmod +x /Users/jima/myshell/*"
alias cx='chmod +x'
export PATH=/Users/jima/myshell:$PATH

function mk(){ 
mkdir -p $1 && cd $1
}



#launchctl
alias launch1="s /Users/jima/Library/LaunchAgents/" #nakjima
alias launch2="s /Library/LaunchAgents"  #admin
alias launch3="s /Library/LaunchDaemons" #admin
alias launch4="s /System/Library/LaunchAgents" #OSX





#sublime theme,user,keymap setting
alias sbu='s /Users/jima/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings'
alias sbk='s /Users/jima/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap'
alias sbt='s /Users/jima/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default.sublime-theme'




#updating for locate
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias pwdfull='find `pwd` -maxdepth 1 -mindepth 1'



#git

#gitのコマンド補完
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias gii="git init"
alias gitc="s ~/.gitconfig"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gst="git status"
alias gcm="git commit -am"
alias gbr="git branch"
alias gph="git push"
alias gpho="git push origin"
alias gpl="git pull"
alias gcl="git clone"
alias gad="git add -A"
alias gmg="git merge"
alias gtr="git log1"
alias gtr2="git log2"
alias gdf="git diff --color-words"
alias grao="git remote add origin"


#git clone + cd
function gclc(){
	gcl $1
	tmp=`basename $1`
	fname="${tmp%.*}" #ファイル名のみ取り出し
	cd $fname
}


#add~push
function gg(){
	gagm $1
	gpho master
}


function gcma(){
	git commit --amend -m $1
}



function gdfh(){
	if [ $# -eq 1 ]
	then
  git diff --color-words HEAD$1
  
	elif [ $# -eq 2 ]
	then
  git diff --color-words HEAD$1 HEAD$2
  
	else
	cat << _EOT_ 
	example:
	gdfh ^
	gdfh ^^ ^
_EOT_
	fi

}


alias gdp="pretty-diff"
function gdph(){
	if [ $# -eq 1 ]
	then
  pretty-diff HEAD$1
  
	elif [ $# -eq 2 ]
	then
  pretty-diff HEAD$1 HEAD$2
	else
	cat << _EOT_ 
	example:
	gdph ^
	gdph ^^ ^
_EOT_
	fi
}


function gagm(){
	gad && gcm $1
}


function grs(){
	git reset --soft HEAD$1
}


function grh(){
	git reset --hard HEAD$1
}


function jk(){ # TO DO: specific row
echo $1
KILL_PID=`jobs -l |gawk '{print $2}'|sed -n $1p`
echo $KILL_PID
kill -9 $KILL_PID
}


function opg(){ #open github from current directory 
tmp=`pwd`
tmp=`basename $tmp`
echo $tmp
GITH_URL=https://github.com/atyenoria/$tmp
echo $GITH_URL
open -a safari $GITH_URL
}



function opsq(){  #open sqlite browser from current directory
SQDB_PAHT=db/development.sqlite3
echo $SQDB_PAHT
open -a sqlitebrowser $SQDB_PAHT
}





#github diff support
export PATH="~/local/bin/icdiff:$PATH"


export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
# export PS1="\u@ \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "





#bash color
alias ls='ls -G'
if [ "$TERM" == xterm ]; then
  export TERM=xterm-color
fi

export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1="\[\033[01;35m\]\u\[\033[00m\]@ \w \[\033[01;34m\]\$git_branch\[$txtred\]\$git_dirtys\[\033[00m\]\$"










#rails
alias be='bundle exec'
alias bu="bundle update"
alias bi='bundle install --path vendor/bundle'

alias r="rails"
alias rr="rake routes"
alias rg="bundle exec rails generate"
alias rgs="bundle exec rails generate scaffold"
alias rgc="bundle exec rails generate controller"
alias rgmo="bundle exec rails generate model"
alias rgmi="bundle exec rails generate migration"

alias rd="bundle exec rails destroy"
alias rds="bundle exec rails destroy scaffold"
alias rdmo="bundle exec rails destroy model"
alias rdmi="bundle exec rails destroy migration"

alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:reset"
alias rds="bundle exec rake db:seed"
alias rdmr="bundle exec rake db:migrate:reset"

alias rgri="bundle exec rails g rspec:integration"

alias rgf="rails g factory_girl:model"


function rnew(){ #テンプレート作成
	rails new $1 --skip-bundle --skip-test-unit
	cd $1
	tmp1
	bi
}

#rbenv設定
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# rbenv binstubs setting
export PATH=./vendor/bin:$PATH





### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"



#mysql
export PATH=/usr/local/mysql/bin:$PATH




#node.js
alias bro="browser-sync start --server --files '*.**, *, *.*,*/**,**/**'"
#nodeのパス設定
export PATH=$HOME/.nodebrew/current/bin:$PATH


#ssh
function sshkg(){ #テンプレート作成
	ssh-keygen -t rsa -f ~/.ssh/id_$1
}

function sshkg1(){ #テンプレート作成
	ssh-copy-id -i  ~/.ssh/id_$1 -p 10022 admin@160.16.82.228
}

function sshkg2(){ #テンプレート作成
	cat <<EOF >> ~/.ssh/config

Host sakura
	Hostname 160.16.82.228
	Port 10022
	User admin
	IdentityFile ~/.ssh/id_sakura1

EOF
}

alias sshc="s /Users/jima/.ssh"


#vagrant

alias vg='vagrant'
alias vgd='vagrant destroy -f'
alias vgu="vagrant up"
alias vgs="vg ssh"

function vg-init(){ #テンプレート作成

  #vagrant init centos6.5
  # tmp2
  
	vagrant up
	vg-ssh
}

function vg-ssh1(){ #vagrat-sshconfig 設定

	ip=`vagrant guestip`

#インベントリファイルの作成
	cat <<EOF >> hosts  
[servers]
$ip

EOF

	echo "Host $ip" > tmp.vg
	vg ssh-config |sed -e '1,1d' >> tmp.vg
	sshc_path=~/.ssh/config
	tes=`grep $ip -n $sshc_path |sed -e "s/[:].*//"` #特定の文字列を含む行番号の取得
	#echo $tes
	if [ $tes ]; then
		tes2=`expr $tes + 9` #何行目まで削除するのか？
		tes=`expr $tes `
		#echo $tes
		#echo $tes2
    # エラー処理
    result=${tes},${tes2}d
    sed -i -e "$result" $sshc_path #指定した行を削除
    #echo $?
		#echo $result
	fi
	cat tmp.vg >> $sshc_path && rf tmp.vg

	ansible -i hosts servers -m ping #確認
}





function vg-ssh1(){ #vagrat-sshconfig 設定

	ip=`vagrant guestip`

#インベントリファイルの作成
	cat <<EOF >> hosts  
[servers1]
$ip

EOF

	echo "Host $ip" > tmp.vg
	vg ssh-config |sed -e '1,1d' >> tmp.vg
	sshc_path=~/.ssh/config
	tes=`grep $ip -n $sshc_path |sed -e "s/[:].*//"` #特定の文字列を含む行番号の取得
	#echo $tes
	if [ $tes ]; then
		tes2=`expr $tes + 9` #何行目まで削除するのか？
		tes=`expr $tes `
		#echo $tes
		#echo $tes2
    # エラー処理
    result=${tes},${tes2}d
    sed -i -e "$result" $sshc_path #指定した行を削除
    #echo $?
		#echo $result
	fi
	cat tmp.vg >> $sshc_path && rf tmp.vg

	ansible -i hosts servers1 -m ping #確認
}



function anp(){ #ansible
ansible-playbook -i hosts $1
}



function vg-ssh2(){ #vagrat-sshconfig 設定

	ip=`ansible -i hosts servers1 -a 'ifconfig' | head -n 12 | tail -n 1|awk '{print substr($0, 21, 16)}'` 

#インベントリファイルの作成
	cat <<EOF >> hosts  
[servers2]
$ip

EOF

	echo "Host $ip" > tmp.vg
	vg ssh-config |sed -e '1,1d' >> tmp.vg
	sshc_path=~/.ssh/config
	tes=`grep $ip -n $sshc_path |sed -e "s/[:].*//"` #特定の文字列を含む行番号の取得
	#echo $tes
	if [ $tes ]; then
		tes2=`expr $tes + 9` #何行目まで削除するのか？
		tes=`expr $tes `
		#echo $tes
		#echo $tes2
    # エラー処理
    result=${tes},${tes2}d
    sed -i -e "$result" $sshc_path #指定した行を削除
    #echo $?
		#echo $result
	fi
	cat tmp.vg >> $sshc_path && rf tmp.vg

	ansible -i hosts servers2 -m ping #確認
}









function test(){ #てすと
#ipadd表示*指定した行だけ取り出す+特定の文字列を切り取り

echo $tmp
}


#python+homebrewp+packer　pass
export PATH=/Users/jima/packer:/usr/local/bin:/usr/local/share/python:$PATH




#nginx
alias ngxc="s /usr/local/etc/nginx/nginx.conf"
alias ngxca="s /usr/local/etc/nginx/"


#php
alias phpfc="s /usr/local/etc/php/5.6/php-fpm.conf"
alias phpic="s /usr/local/etc/php/5.6/php.ini"











