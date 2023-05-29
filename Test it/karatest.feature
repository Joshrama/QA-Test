Feature:JSONPlaceholder Posts API Testing

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario:Verify POST /posts Endpoint
    Given path '/posts'
    When method GET
    Then status 200
    And match response == [{ id: '#number', title: '#string', body: '#string', userId: '#notnull' }]

  Scenario: Verify GET /posts/{postId} Endpoint
    Given path '/posts/1'  # Menggunakan postId 1 sebagai contoh
    When method GET
    Then status 200
    And match response == { id: '#number', title: '#string', body: '#string', userId: '#notnull' }

  Scenario: Verify POST /posts Endpoint with Invalid ID
    Given path '/posts'
    And request { userId: 123, title: 'Test Title', body: 'Test Body' }
    When method POST
    Then status 201
    And match response == { id: '#number', title: 'Test Title', body: 'Test Body', userId: 123 }

  Scenario: Generate HTML Report
    Given def report = karate.prettyHtml(karate.info)
    And karate.write(report, 'target/report.html')
