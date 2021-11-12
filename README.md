# Rekayasa Web

## Setup
```
1. Clone this project
`git clone https://github.com/Galih157/rekayasa-web`

2. Go to your cloned repositor folder
cd your-folder/rekayasa-web

3. Run composer install
composer install

4. Set your environment

5. Run migration
php spark migrate

6. Run codeigniter server
php spark serve
```

## API Endpoints
### Article

> Get all article

**Method** : `GET`

**Endpoint** : `/api/v1/articles`

> Create article

**Method** : `POST`

**Endpoint** : `/api/v1/articles`

**Content-Type**: `application/json`

**Request Body**
```JSON
{
    "title": "Test Create",
    "content": "Lorem ipsum dolor sit amet",
    "status": "draft"
}
```

> Delete article

**Method** : `DELETE`

**Endpoint** : `/api/v1/articles/:id`

> Update article

**Method** : `PUT`

**Endpoint** : `/api/v1/articles/:id`

**Content-Type**: `application/json`

**Request Body**
```JSON
{
    "title": "Test Create",
    "content": "Lorem ipsum dolor sit amet",
    "status": "draft"
}
```