<?php
require_once('../../entities/dto/order.php');
if (isset($_GET['action'])) {
    session_start();
    $order_model = new Order;
    $result = array('status' => 0, 'session' => 0, 'message' => null, 'exception' => null, 'dataset' => null);
    if (isset($_SESSION['id_cliente'])) {
        $result['session'] = 1;
        switch ($_GET['action']) {
            case 'createDetail':
                $_POST = Validator::validateForm($_POST);
                if (!$order_model->startOrder()) {
                    $result['exception'] = 'Ocurrió un problema al obtener el pedido';
                } elseif (!$order_model->setProduct($_POST['id_product'])) {
                    $result['exception'] = 'Producto incorrecto';
                } elseif (!$order_model->setQuantityProduct($_POST['product_exits'])) {
                    $result['exception'] = 'Cantidad incorrecta';
                } elseif ($order_model->createDetail()) {
                    $result['status'] = 1;
                    $result['message'] = 'Producto agregado correctamente';
                } else {
                    $result['exception'] = Database::getException();
                }
                break;
            case 'readOrderDetail':
                if (!$order_model->startOrder()) {
                    $result['exception'] = 'Debe agregar un producto al carrito';
                } elseif ($result['dataset'] = $order_model->readOrderDetail()) {
                    $result['status'] = 1;
                    $_SESSION['id_pedido'] = $order_model->getId();
                } elseif (Database::getException()) {
                    $result['exception'] = Database::getException();
                } else {
                    $result['exception'] = 'No tiene productos en el carrito';
                }
                break;
            case 'updateOrder':
                if (!$order_model->setClientId($_POST['id_cliente'])) {
                    $result['exception'] = 'Cliente no encontrado';
                }elseif ($order_model->updateOrder()) {
                    $result['status'] = 1;
                    $result['message'] = 'Pedido actualizado correctamente';
                }else{
                    $result['exception']='No se pudo actualizar el estado del pedido';
                }
                break;
            case 'confirmOrder':
                if (!$order_model->setClientId($_POST['id_cliente'])) {
                    $result['exception'] = 'Cliente no encontrado';
                }elseif ($result['dataset']=$order_model->confirmOrder()) {
                    $result['status'] = 1;
                    $result['message'] = 'Pedido actualizado correctamente';
                }
                break;
            case 'subtractDetail':
                if (!$order_model->setDetailId($_POST['id_detalle'])) {
                    $result['exception']='Detalle, no encontrado';
                }elseif (!$order_model->setQuantityProduct($_POST['cantidad'])) {
                    $result['exception']='Cantidad, incorrecta';
                }elseif ($order_model->subtractDetail()) {
                    $result['status']=1;
                }else{
                    $result['exception']=Database::getException();
                }
                break;
                case 'addDetail':
                    if (!$order_model->setDetailId($_POST['id_detalle'])) {
                        $result['exception']='Detalle, no encontrado';
                    }elseif (!$order_model->setQuantityProduct($_POST['cantidad'])) {
                        $result['exception']='Cantidad, incorrecta';
                    }elseif ($order_model->addDetail()) {
                        $result['status']=1;
                    }else{
                        $result['exception']=Database::getException();
                    }
                    break;
            case 'deleteDetail':
                if (!$order_model->setDetailId($_POST['id_detalle_pedido'])) {
                    $result['exception'] = 'Detalle incorrecto';
                } elseif ($order_model->deleteOrderDetail()) {
                    $result['status'] = 1;
                    $result['message'] = 'Producto removido correctamente';
                } else {
                    $result['exception'] = 'Ocurrió un problema al remover el producto';
                }
                break;
            default:
                $result['exception'] = 'Accion no disponible';
        }
    } else {
        switch ($_GET['action']) {
            case 'createDetail':
                $result['exception'] = 'Debe iniciar sesión para agregar el producto al carrito';
                break;
            default:
                $result['exception'] = 'Acción no disponible fuera de la sesión';
        }
    }
    header('content-type: application/json; charset=utf-8');
    print(json_encode(($result)));
} else {
    print(json_encode('Recurso no disponible'));
}
