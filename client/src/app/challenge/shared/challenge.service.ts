import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {FormGroup} from "@angular/forms";
import {SubmitChallengeDto} from "./submit-challenge-dto.model";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class ChallengeService {

  readonly makeUrl = '/api/challenge/make';
  readonly submitUrl = '/api/challenge/submit';
  readonly getRandomRivalUrl = '/api/user-query/random-rival';

  constructor(private http: HttpClient) {
  }

  make(data: FormGroup): Observable<any> {
    return this.http.post(this.makeUrl, data);
  }

  submit(data: SubmitChallengeDto) {
    return this.http.post(this.submitUrl, data);
  }

  getRandomRival(): Observable<string> {
    return this.http.get<string>(this.getRandomRivalUrl);
  }
}