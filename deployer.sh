set -e

echo "Deploying application ..."

# Enter maintenance mode
(php artisan down --message "The application is being (quickly!) updated. Please try again in a minute.") || true
    #update codebase
    git pull origin master
#exit maintenance mode
php artisan up

echo "Application deployed successfully!"
