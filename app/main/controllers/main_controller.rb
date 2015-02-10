# By default Volt generates this controller for your Main component
class MainController < Volt::ModelController
  def index
    # Add code for when the index view is loaded
  end

  def about
    # Add code for when the about view is loaded
  end

	def color_array
		return ['green','blue','yellow','red']
	end
	
	
	def add_color#(game_array)
		
		page._colors.push('red')
		
	end
	
	
	def red
		if page._colors.first == ['red']
			page._colors.pop
		else
			return 'nope'	
		end
	end

  private

  # The main template contains a #template binding that shows another
  # template.  This is the path to that template.  It may change based
  # on the params._controller and params._action values.
  def main_path
    params._controller.or('main') + '/' + params._action.or('index')
  end

  # Determine if the current nav component is the active one by looking
  # at the first part of the url against the href attribute.
  def active_tab?
    url.path.split('/')[1] == attrs.href.split('/')[1]
  end
end
