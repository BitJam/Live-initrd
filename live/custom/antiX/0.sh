# File: /live/custom/antiX/0.sh
# antiX Specific /init code

LIST_MODULES=true
CHECK_BOOTCODES=true

DO_DEB=true
DO_FSCK=true
DO_XTRA=true
DO_GFX=true

FANCY_PROMPT="prompt-fancy"
AUTO_LOGIN_PROG="autologin"
AUTO_LOGIN_TERMS="2-4"

live_param_filter() {
    local param
    for param; do
        case $param in
        # Our Live params
        disable_srv=*|disable_service=*) ;;
        aX=*|amnt|amnt=*|antiX=*|automount|automount=*|confont=*|conkeys=*);;
        desktop=*|dpi=*|drvr=*|dummy|fstab=*|hostname=*|kbd=*|kbopt=*|kbvar=*);;
        lang=*|lean|mean|mirror=*|mount=*|noRox|nodbus|noloadkeys|noprompt);;
        nosplash|password|password=*|prompt|pw|pw=*|tz=*|ubp=*|ushow=*);;
        uverb=*|xdrvr=*|xorgconf|xres=*|Xtralean);;

        *) printf "$param " ;;
        esac
    done
}
