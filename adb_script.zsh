adb_script() {
	case "$1" in
        login)
            case "$2" in
                    emulator)
                        . $ZSH_FUNCTIONS_PATH/adb_scripts/konviva_login-nexus_5_emulator.zsh
                        ;;
                     
                    motoz2play)
                        . $ZSH_FUNCTIONS_PATH/adb_scripts/konviva_login-moto_z2_play.zsh
                        ;;
                     
                    motoe5)
                        . $ZSH_FUNCTIONS_PATH/adb_scripts/konviva_login-moto_e5.zsh
                        ;;

                    other)
                        ;;
                     
                    *)
                        echo "Usage: $0 {login <device_model_name>}"
                        echo "Do $0 ls for list of models."
                        exit 1
             
            esac
            ;;
         
        logout)
            case "$2" in
                    emulator)
                        echo "Not implemented yet."
                        ;;
                     
                    motoz2play)
                        . $ZSH_FUNCTIONS_PATH/adb_scripts/konviva_logout_moto_z2_play.zsh
                        ;;
                     
                    motoe5)
                        echo "Not implemented yet."
                        ;;
                     
                    *)
                        echo $"Usage: $0 {login|logout|help}"
                        echo $"Variables needed=(example): K_URL=qa.konviva.com.br K_USER=jonathan K_PASS=1234"
                        exit 1
             
            esac
            ;;

        ls)
            echo "emulator"
            echo "motoz2play"
            echo "motoe5"
            ;;

        testif)

            ;;
         
        *)
            echo $"Usage: $0 {login|logout|ls}"
            exit 1
 
	esac

}
