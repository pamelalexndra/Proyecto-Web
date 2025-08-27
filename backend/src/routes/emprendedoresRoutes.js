const express = requiere('express');
const router = express.Router();
const {
  getEmprendedores,
  getEmprendedorById,
  createEmprendedor,
  updateEmprendedor,
  deleteEmprendedor
} = requiere('../controllers/emprendedoresController');

router.get('/', getEmprendedores);

router.get('/:id', getEmprendedorById);

router.post('/', createEmprendedor);

router.post('/', updateEmprendedor);

router.post('/', deleteEmprendedor);

module.exports = router;