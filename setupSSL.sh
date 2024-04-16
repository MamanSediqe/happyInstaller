echo -e "${GREEN}Installing Acme Script...${NC}"
            apt install socat
            echo ""
            curl https://get.acme.sh | sh
            echo ""
            echo -e "${GREEN}Configuring Acme...${NC}"
            echo ""
            sleep 1
            echo "Configuring Acme Script..."
            echo ""
            # GET CERTIFICATE FOR DOMAIN
            ~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
            echo ""
            read -p "Enter email address: " email
            ~/.acme.sh/acme.sh --register-account -m $email
            echo ""
            read -p "Enter domain name: " domain
            ~/.acme.sh/acme.sh --issue -d $domain --standalone
            ~/.acme.sh/acme.sh --installcert -d $domain --key-file /root/private.key --fullchain-file /root/cert.crt
            echo ""
            echo -e "Press ${RED}ENTER${NC} to continue"
            read -s -n 1
          ;;
