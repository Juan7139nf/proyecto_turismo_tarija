<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use App\Models\TourActividad as TourActividadModel;

class TourActividad extends AbstractWidget
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
        $count = TourActividadModel::count();
        $string = 'Tour Actividades';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-megaphone',
            'title' => "{$count} {$string}",
            'text' => __('Tiene :count :string en su base de datos. Haga clic en el botón de abajo para ver todos los TourActividades.', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Tour Actividades',
                'link' => route('voyager.tour-actividad.index'),
            ],
            'image' => Voyager::image('widget/tour_actividad.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return in_array(Auth::user()->role->id, [1, 3, 4]);
    }
}
