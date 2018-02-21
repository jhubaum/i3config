noArgs() {
    echo "illegal number of parameters"
}

wrongArgs() {
    echo "Unknown Flag"
}

if (( $# == 0 ));
then noArgs
else
    case $1 in
	"t")
	    echo "Toggled"
	    ;;
	"s")
	    echo "Set"
	    ;;
	"+")
	    echo "Added"
	    ;;
	"-")
	    echo "Subtracted"
	    ;;
	*)
	    wrongArgs
	    ;;
    esac
fi
