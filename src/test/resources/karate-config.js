function fn() {
  var config = {
    baseUrl: 'https://petstore.swagger.io/v2',
    timeout: 5000,
  };

  if (karate.env === 'dev') {
    config.baseUrl = 'https://dev-petstore.com';
  } else if (karate.env === 'prod') {
    config.baseUrl = 'https://prod-petstore.com';
  }

  return config;
}
