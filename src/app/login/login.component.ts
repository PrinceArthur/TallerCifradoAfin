import { Component } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  user: string;
  password: string;

  constructor() {}

  login(user: string, password: string){
    this.user = user;
    this.password = password;
  }





}
