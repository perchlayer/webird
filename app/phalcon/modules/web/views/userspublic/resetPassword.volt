<div class="container">
  {{ form(null, 'class': 'form-horizontal', 'autocomplete': 'off', 'role': 'form') }}
    <div class="form-group">
      <div class="col-md-4 col-md-offset-4">
        <div class="text-warning">
          {{ content() }}
        </div>
        <h2>{{_('Reset Password')}}</h2>
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-4 col-md-offset-4">
        {{email}}
      </div>
    </div>
    <div class="form-group">
      <label for="name" class="col-md-2 col-md-offset-2 text-right control-label">{{form.label('password')}}</label>
      <div class="col-md-4">
        {{ form.render('password', ['class':'form-control']) }}
        {% if form.hasMessagesFor('password') %}
          <div class="text-danger">{{ form.getMessagesFor('password')[0] }}</div>
        {% endif %}
      </div>
    </div>
    <div class="form-group">
      <label for="email" class="col-md-2 col-md-offset-2 text-right control-label">{{form.label('confirmPassword')}}</label>
      <div class="col-md-4">
        {{ form.render("confirmPassword", ['class':'form-control']) }}
        {% if form.hasMessagesFor('confirmPassword') %}
          <div class="text-danger">{{ form.getMessagesFor('confirmPassword')[0] }}</div>
        {% endif %}
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-4 col-md-offset-4 text-center">
        {{ submit_button(_('Reset Password'), "class": "btn btn-primary") }}
      </div>
    </div>
  </form>
</div>
