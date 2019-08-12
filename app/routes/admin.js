module.exports = function(app) {
    const { check, validationResult } = require('express-validator');

    
    app.get('/formulario_inclusao_noticia',function(req,res){
        res.render("admin/form_add_noticia",{erro: ''})
    });

    app.post('/noticias/salvar',
    [
        check('titulo').not().isEmpty().withMessage('Título é obrigatório'),
        check('resumo').not().isEmpty().withMessage('O resumo é obrigatório!'),
        check('resumo').isLength({min: 10, max: 100}).withMessage('O resumo deve conter entre 10 e 100 caracteres!'),
        check('autor').not().isEmpty().withMessage('Autor é obrigatório'),
        check('data_noticia').not().isEmpty().isISO8601().withMessage('Data é obrigatória'),
        check('noticia').not().isEmpty().withMessage('Notícia é obrigatória'),
    ],
    function(req,res){
        var noticia = req.body;                
        var erros = validationResult(req);

        if(!erros.isEmpty()){
            res.render("admin/form_add_noticia",{erros: erros})
            //return res.status(422).json({erros: erros.array()});
        }
        console.log('passou');
        var connection = app.config.dbConnection();
        var noticiasModel = new app.app.models.NoticiasDAO(connection);

        noticiasModel.salvarNoticia(noticia, function(error, result){
            res.redirect("/noticias");
        });
    });
}