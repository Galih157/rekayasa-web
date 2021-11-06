<?php

namespace App\Controllers\API;

use App\Controllers\BaseController;
use App\Models\Article;
use CodeIgniter\API\ResponseTrait;

class ArticleController extends BaseController
{
    use ResponseTrait;

    protected $articleModel;

    public function __construct()
    {
        $this->articleModel = new Article();
    }

    public function index()
    {
        return $this->respond([
            'data' => $this->articleModel->paginate(),
            'pagination' => $this->articleModel->pager
        ]);
    }

    public function create()
    {
        $articleId = $this->articleModel->insert($this->request->getJSON(true));
        $article = $this->articleModel->find($articleId);

        return $this->respondCreated([
            'data' => $article
        ]);
    }

    public function show($articleId)
    {
        $article = $this->articleModel->find($articleId);

        if (!$article) {
            return $this->respond([
                'message' => 'Article not found'
            ], 404);
        }

        return $this->respond($article);
    }

    public function update($articleId)
    {
        $this->articleModel->update($articleId, $this->request->getJSON(true));

        if (!$this->articleModel->find($articleId)) {
            return $this->respond([
                'message' => 'Article not found'
            ], 404);
        }

        $article = $this->articleModel->find($articleId);

        return $this->respondUpdated([
            'data' => $article
        ]);
    }

    public function delete($articleId)
    {
        if (!($article = $this->articleModel->find($articleId))) {
            return $this->respond([
                'message' => 'Article not found'
            ], 404);
        }
        
        $this->articleModel->delete($articleId);

        return $this->respondDeleted([
            'message' => "Article '{$article['title']}' telah hapus"
        ]);
    }
}
