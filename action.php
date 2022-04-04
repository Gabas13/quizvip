<?php
session_start();
if (!empty($_POST['action'])) {
    if ($_POST['action'] == 'start') {
        echo $_SESSION['start'] = 'start';
    } elseif ($_POST['action'] == 'check_session') {
        echo $_SESSION['start'] ?? '';
    } elseif ($_POST['action'] == 'destroysession') {
        session_destroy();
    }
}
