function fn() {
     karate.configure('connectTimeout', 60000);
     karate.configure('readTimeout', 60000);
     karate.configure('logPrettyResponse', true);

    var env = karate.env;

    karate.log('karate.env system property was:', env);

     if (!env) {
         env = 'stg';
     }

     var config = {
         env: env
     }

     if (env == 'dev') {
           config.baseUrlMainSite = 'https://api-backend-smartpyme-dev.azurewebsites.net';

     }else if (env == 'stg'){
           config.baseUrlMainSite = 'https://api-backend-smartpyme-stg.azurewebsites.net';

     }

     return config;
 }