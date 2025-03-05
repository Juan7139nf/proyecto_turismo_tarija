<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use App\Models\Calificacion as CalificacionModel;

class Calificacion extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = CalificacionModel::count();
        $string = 'Calificaciones';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-medal-rank-star',
            'title' => "{$count} {$string}",
            'text' => __('Tiene :count :string en su base de datos. Haga clic en el botón de abajo para ver todos los Calificaciones.', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Calificaciones',
                'link' => route('voyager.calificacion.index'),
            ],
            'image' => Voyager::image('widget/calificacion.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return in_array(Auth::user()->role->id, [1, 3]);
    }
}
